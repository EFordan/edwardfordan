<?php
require_once "./config/Connection.php";
require_once "./mainmodule/Get.php";
require_once "./mainmodule/Auth.php";
require_once "./mainmodule/Global.php";

$db = new Connection();
$pdo = $db->connect();
$global = new GlobalMethods($pdo);
$get = new Get($pdo);
$auth = new Auth($pdo);

if(isset($_REQUEST['request'])){
    $req = explode('/', rtrim($_REQUEST['request'], '/'));
}
else{
    $req = array("errorcatcher");
}

switch($_SERVER['REQUEST_METHOD']){
    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        switch($req[0]){

            case 'add-product':
                echo json_encode($global->insert('products', $data));
            break;

            case 'add-order':
                echo json_encode($global->insert('orders', $data));
            break;

            case 'add-to-cart':
                echo json_encode($global->insert('cart', $data));
            break;
       
            case 'login':
                echo json_encode($auth->login($data));
            break;

            case 'add-user':
                echo json_encode($auth->add_user($data));
                // echo(json_encode($data));
                // exit();
            break;

            case 'logout':
                session_destroy();
            break;

            default:
                echo "request not found";
            break;
        }
    break;

    case 'GET':
        switch($req[0]){

            case 'get-all-product':
                echo json_encode($get->get_common("products", null, null));
            break;

            case 'get-all-order-per-user':
                echo json_encode($get->get_common("orders", null,"user_id = '$req[1]'"));
            break;

            case 'get-all-cart-per-user':
                echo json_encode($get->get_all_cart_per_user("cart", $req[1]));
            break;

            default:
            echo "request not found";
            break;
        }
    break;

    case 'PUT':
    $data = json_decode(file_get_contents("php://input"));
        switch($req[0]){
            case 'update-product':
                echo json_encode($global->update("products", $data, "id = '$req[1]'"));
            break;

            case 'cancel-order':
                echo json_encode($global->update("orders", $data, "id = '$req[1]'"));
            break;

            case 'update-cart-status-per-user':
                echo json_encode($global->update("cart", $data, "user_id = '$req[1]'  AND status = 'IN_CART'"));
            break;

            default:
            echo "request not found";
            break;
        }
    break;

    case 'DELETE':
        switch($req[0]){
            case 'delete-product':
                echo json_encode($global->delete("products", "id = '$req[1]'"));
            break;

            case 'delete-product-from-cart':
                echo json_encode($global->delete("cart", "id = '$req[1]'"));
            break;

            default:
            echo "request not found";
            break;
        }
    break;

    default:
        echo "failed request";
    break;

    
}
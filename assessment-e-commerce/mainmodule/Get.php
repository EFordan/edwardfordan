<?php

class Get{

    protected $pdo;
    protected $gm;

    public function __construct(\PDO $pdo)
    {
        $this->pdo = $pdo;
        $this->gm = new GlobalMethods($pdo);
    }

    public function get_common($table, $join ,$condition ){
        $sql = "SELECT * FROM $table";
        if ($join != null) {
            $sql .= " {$join}";
        }
        if($condition!=null){
            $sql .= " WHERE {$condition}";
        }
      
        $res = $this->gm->executeQuery($sql);

        // echo(json_encode($res));
        // exit();

        if($res['code']==200){
            return $this->gm->returnPayload($res['data'], "success", "Succesfully retrieved from $table", $res['code']);
        }

        return $this->gm->returnPayload(null, "failed", "failed to retrieve data", $res['code']);
    }

        public function get_all_cart_per_user($table, $id){
        $sql = "SELECT c.*, p.name, p.description, p.price, p.image_path FROM cart c INNER JOIN users u ON u.id = c.user_id INNER JOIN products p ON c.product_id = p.id WHERE c.user_id = {$id} AND c.status = 'IN_CART'";
      
        $res = $this->gm->executeQuery($sql);

        // echo(json_encode($res));
        // exit();

        if($res['code']==200){
            return $this->gm->returnPayload($res['data'], "success", "Succesfully retrieved from $table", $res['code']);
        }

        return $this->gm->returnPayload(null, "failed", "failed to retrieve data", $res['code']);
    }
}
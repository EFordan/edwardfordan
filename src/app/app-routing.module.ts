import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { ECommerceComponent } from './e-commerce/e-commerce.component';
import { CartsComponent } from './e-commerce/carts/carts.component';
import { CartOtherPageComponent } from './e-commerce/cart-other-page/cart-other-page.component';
const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'login', component: LoginComponent },
  { path: 'home', component: ECommerceComponent },
  { path: 'carts', component: CartsComponent },
  { path: 'other-carts', component: CartOtherPageComponent },

  // wildcard route for 404 page
  { path: '**', redirectTo: '' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

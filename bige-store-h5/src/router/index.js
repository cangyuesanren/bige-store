import React from "react"

import Home from "../pages/home/home"
import Category from "../pages/category/category"
import Street from "../pages/street/street"
import Cart from "../pages/cart/cart"
import User from "../pages/user/user"

const routes = [
  {
    path: "/home",
    exact: true,
    component:  Home
  },
  {
    path: "/category",
    exact: true,
    component: Category
  },
  {
    path: "/street",
    exact: true,
    component: Street
  },
  {
    path: "/cart",
    exact: true,
    component: Cart
  },
  {
    path: "/user",
    exact: true,
    component: User
  },

]
export default routes

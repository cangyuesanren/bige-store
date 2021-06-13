import './App.css';
import { renderRoutes } from 'react-router-config'
import {BrowserRouter, Link} from "react-router-dom";
import routes from "./router";


function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Link to="/home">首页</Link>
        <Link to="/category">分类</Link>
        <Link to="/street">店铺街</Link>
        <Link to="/cart">购物车</Link>
        <Link to="/user">我的</Link>
        {renderRoutes(routes)}
      </BrowserRouter>
    </div>
  );
}

export default App;

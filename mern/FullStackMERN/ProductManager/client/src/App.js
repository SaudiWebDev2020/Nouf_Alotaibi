import "./App.css";
import Main from "./views/Main";
import "bootstrap/dist/css/bootstrap.min.css";
import Detail from "./views/Detail";
import { Router } from "@reach/router";
import Update from "./views/Update";

function App() {
  return (
    <div className="App">
      <div className="container">
        <div className="jumbotron">
          <h3>Product Manager</h3>
          <Router>
            <Main path="product/" />
            <Detail path="product/:id" />
            <Update path="product/:id/edit"/>
          </Router>
        </div>
      </div>
    </div>
  );
}

export default App;

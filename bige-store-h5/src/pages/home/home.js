import React, {Component} from 'react';
import "./home.scss"
export default class home extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <div className="home">
        首页1
        <div className="acc">
          123456789
        </div>
      </div>
    )
  }
}
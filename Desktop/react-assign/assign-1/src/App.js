import React, { Component } from 'react';
import './App.css';
import UserInput from './UserInput';
import UserOutput from './UserOutput';

class App extends Component {
  state = {
     users: [
       { name: 'Practical Pig', age: 1 }

     ]
   }

  usersChangeHandler = (event)=> {
    this.setState({
      users: [
           { name: event.target.value}
    ]})
  }

  render() {
    return (
      <div className="App">
        <UserInput changed= {this.usersChangeHandler}
        currentName = {this.state.users[0].name}/>
        <UserOutput userName = {this.state.users[0].name}/>
        <UserOutput userName = {this.state.users[0].name}/>
        <UserOutput userName = "Fiddler Pig"/>

      </div>
    );
  }
}

export default App;

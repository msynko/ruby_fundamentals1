import React from 'react';
import  './UserOutput.css'

const UserOutput  = (props) => {
   return (
     <div className= "UserOutput">
     <p>Hello, {props.userName} </p>
     <p>There!</p>
     </div>
   )
};


export default UserOutput;

import React from 'react';

const UserInput  = (props) => {
  const style = {
    border: '2px solid red',
    width: '30%'

  }
   return (
     <div >
      <input style={style} type="text" onChange={props.changed} value={props.currentName} />
     </div>
   )
};


export default UserInput;

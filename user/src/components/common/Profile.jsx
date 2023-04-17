import { Fragment } from 'react'
import React, { Component} from 'react'
import { Redirect } from 'react-router-dom';




class Profile extends Component {
     render() { 

          let name;
          let email;
          if(this.props.user){
               name = this.props.user.name;
               email = this.props.user.email;
          }

          if(!localStorage.getItem('token')){
               return <Redirect to="/login" />
          }



          return (
               <Fragment>
               <table class="table-auto w-full">
                 <thead>
                   <tr>
                   <div class="flex flex-col justify-center items-center mb-8">

                     <th class="text-4xl font-bold py-8 pl-67">User Profile Page</th></div>
                   </tr>
                 </thead>
                 <tbody>
                   <tr>
                     <td>
                       <ul class="list-group bg-white rounded-lg shadow-lg p-6 max-w-md mx-auto">
                         <li class="list-group-item flex justify-between items-center py-3 border-b border-gray-300">
                           <span class="font-semibold">Name:</span>
                           <span class="text-gray-600">{name}</span>
                         </li>
                         <li class="list-group-item flex justify-between items-center py-3 border-b border-gray-300">
                           <span class="font-semibold">Email:</span>
                           <span class="text-gray-600">{email}</span>
                         </li>
                       </ul>
                     </td>
                   </tr>
                 </tbody>
               </table>
             </Fragment>
          )
     }
}
export default Profile
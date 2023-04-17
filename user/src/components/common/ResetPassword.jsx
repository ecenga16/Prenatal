import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'

export class ResetPassword extends Component {

     constructor(){
          super(); 
          this.state={
               token:'',
               email:'',
               password:'',
               password_confirmation:'',
               message:'' 

          }
     } 


      // Reset Form Submit Method 
      formSubmit = (e) => {
          e.preventDefault();
          const data={
               token:this.state.token,
               email:this.state.email,
               password:this.state.password,
               password_confirmation:this.state.password_confirmation
          }

          axios.post(AppURL.UserResetPassword,data).then(response =>{ 

               this.setState({message:response.data.message})

               alert('Password Changed');
               document.getElementById("fromreset").reset();

          }).catch(error=>{
               this.setState({message:error.response.data.message})
               alert(this.state.message,{
                    position: "top-right"
               });
          }); 

     }


     render() {
          return (
               <Fragment>
              <div className="container mx-auto">
    <div className="px-2 py-5 md:py-0 md:flex ">
      <div className="md:w-1/2 md:px-5 lg:px-8 mb-8 md:mb-0">
        <form className="bg-white p-5 mx-auto " onSubmit={this.formSubmit}>
                                   <h4 class="section-title-login">RESET PASSWORD</h4>
           
                                   <input class="form-control m-2" type="text" placeholder="Enter Your Pin Code" onChange={(e)=>{this.setState({token:e.target.value})}} />
           
                                   <input class="form-control m-2" type="email" placeholder="Enter Your Email"  onChange={(e)=>{this.setState({email:e.target.value})}} />
           
                                   <input class="form-control m-2" type="password" placeholder="Your New Password"  onChange={(e)=>{this.setState({password:e.target.value})}} />
           
                                   <input class="form-control m-2" type="password" placeholder="Confirm Your Password"  onChange={(e)=>{this.setState({password_confirmation:e.target.value})}} />
           
                                   <button type="submit" class="btn btn-block m-2 site-btn-login">Reset Password</button>
                               </form>
                           </div>
           
                           
                       </div>
                   </div>
               
           </Fragment>
          )
     }
}
export default ResetPassword

import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'


class ForgetPassword extends Component {

     constructor(){
          super();
          this.state={
               email:'',            
               message:'' 
          }
     } 

      // Forget Password Form Submit Method 
      formSubmit = (e) => {
          e.preventDefault();
          const data={
               email:this.state.email                
          }

          axios.post(AppURL.UserForgetPassword, data).then(response => {
               alert('Check Email');


          }).catch(error=>{
               console.log(error);
          }); 

     }


     render() {
          return (
               <Fragment> 
                <div className="px-2 py-5 md:py-0 md:flex ">
                   <div className="md:w-1/2 md:px-5 lg:px-8 mb-8 md:mb-0">
                      <form className="bg-white p-5 mx-auto " onSubmit={this.formSubmit}>
                       <h4 className="section-title-login p-3"> FORGET PASSWORD ? </h4>
                       <input className="form-control m-2" type="email" placeholder="Enter Your Email" onChange={(e)=>{this.setState({email:e.target.value})}} />
                       <button type="submit" className="btn btn-block m-2 site-btn-login"> Reset Password </button>
                     </form>
                   </div>
                 
                 </div>
             </Fragment>
          )
     }
}
export default ForgetPassword
import React, { Component, Fragment } from 'react'
import { Link, Redirect } from 'react-router-dom';
import AppURL from '../../api/AppURL';
import axios from 'axios'


class Register extends Component {
     constructor(props){
          super(props);
          this.state={
               name:'',
               email:'',
               password:'',
               password_confirmation:'',
               message:'',
               loggedIn: false
          }
     } 
      // Register Form Submit Method 
      formSubmit = (e) => {
          e.preventDefault();
          const data={
               name:this.state.name,
               email:this.state.email,
               password:this.state.password,
               password_confirmation:this.state.password_confirmation
          }
          axios.post(AppURL.UserRegister, data).then(response => {
            localStorage.setItem('token', response.data.token);
            this.setState({ loggedIn: true });
            this.props.setUser(response.data.user);
          })
          .catch(error => {

          }); 
     }
     render() {
          if (localStorage.getItem('token')) {
               return (
                 <Redirect to="/profile" />
               )    }
         
             
             if (this.state.loggedIn){
               return <Redirect to={'/profile'} />
              }
          return (
               <Fragment>
                <div className="container mx-auto">
    <div className="px-2 py-5 md:py-0 md:flex ">
      <div className="md:w-1/2 md:px-5 lg:px-8 mb-8 md:mb-0">
        <form className="bg-white p-5 mx-auto " onSubmit={this.formSubmit}>
          <h4 className="section-title-login text-center">USER REGISTER</h4>
          <div className="mb-4">
                    
     <input className="form-control block w-full border border-gray-400 p-2 rounded mb-2 focus:outline-none focus:border-gray-500" type="text" placeholder="Enter Your Name"  onChange={(e)=>{this.setState({name:e.target.value})}} />
     <input className="form-control block w-full border border-gray-400 p-2 rounded mb-2 focus:outline-none focus:border-gray-500" type="email" placeholder="Enter Your Email" onChange={(e)=>{this.setState({email:e.target.value})}} />
     <input className="form-control block w-full border border-gray-400 p-2 rounded mb-2 focus:outline-none focus:border-gray-500" type="password" placeholder="Enter Your Password" onChange={(e)=>{this.setState({password:e.target.value})}}  />
     <input className="form-control block w-full border border-gray-400 p-2 rounded mb-2 focus:outline-none focus:border-gray-500" type="password" placeholder="Confirm Your Password" onChange={(e)=>{this.setState({password_confirmation:e.target.value})}} />
     
     
     </div>
          <div class="text-center">
            <button
              type="submit"
              className="btn btn-block m-2 site-btn-login bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
            >
              Register
            </button>
            {this.state.message && (
              <div className="text-danger">{this.state.message}</div>
            )}
          </div>
          <br />
          <hr />
          
        </form>
      </div>
      </div>
      </div>

          </Fragment>
          )
     }
}
export default Register
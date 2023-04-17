import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Register from '../components/common/Register'



export class RegisterPage extends Component {

     

     componentDidMount(){
          window.scroll(0,0)
     }

     render() {

          const setUser = this.props.setUser;
          const user = this.props.user;

          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                   

               <Register setUser={setUser} user ={user}  />  
               
               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     } 
}

export default RegisterPage
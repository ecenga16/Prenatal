import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import ForgetPassword from '../components/common/ForgetPassword'
import NavMenuDesktop from '../components/common/NavMenu'

class ForgetPasswordPage extends Component {

     componentDidMount(){
          window.scroll(0,0)
     }

     render() {
          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                    

               <ForgetPassword />  

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              
          </Fragment>
          )
     }
}

export default ForgetPasswordPage
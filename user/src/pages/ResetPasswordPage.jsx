import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import ResetPassword from '../components/common/ResetPassword'


class ResetPasswordPage extends Component {

     componentDidMount(){
          window.scroll(0,0)
     }

     render() {
          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                               

               <ResetPassword />  

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     }
}

export default ResetPasswordPage
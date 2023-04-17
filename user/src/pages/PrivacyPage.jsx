import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Privacy from '../components/others/Privacy'

class PrivacyPage extends Component {
     componentDidMount(){
          window.scroll(0,0)
     }
     render() {
          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                

               <Privacy /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     }
}

export default PrivacyPage
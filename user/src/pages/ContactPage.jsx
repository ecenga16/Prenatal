import React, { Component, Fragment } from 'react'
import Contact from '../components/common/Contact'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'


class ContactPage extends Component {

    componentDidMount(){
        window.scroll(0,0);
       }
     render() {
          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                  

               <Contact /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

            

          </Fragment>
          )
     }
}

export default ContactPage
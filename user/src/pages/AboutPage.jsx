import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import About from '../components/others/About'

 class AboutPage extends Component {
     componentDidMount(){
          window.scroll(0,0)
     } 


     render() {
          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                  

               <About /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     }
}

export default AboutPage
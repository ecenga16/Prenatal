import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Refund from '../components/others/Refund'

class RefundPage extends Component {

     componentDidMount(){
          window.scroll(0,0)
     }

     render() {
          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                  

               <Refund /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

             

          </Fragment>
          )
     }
}

export default RefundPage
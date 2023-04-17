import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Purchase from '../components/others/Purchase'

class PurchasePage extends Component {
     componentDidMount(){
          window.scroll(0,0)
     }

     render() {
          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                  

               <Purchase /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     }
}

export default PurchasePage
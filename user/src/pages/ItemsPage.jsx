import React, { Component, Fragment } from 'react'
import Items from '../components/Items/Items'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'

class ItemsPage extends Component {

     componentDidMount(){
          window.scroll(0,0)
     }

     render() {
          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                 

               <Items /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

              

          </Fragment>
          )
     }
}

export default ItemsPage
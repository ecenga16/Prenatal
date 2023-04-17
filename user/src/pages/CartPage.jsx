import React, { Component, Fragment } from 'react'
import Cart from '../components/Cart/Cart'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'

class CartPage extends Component {

     componentDidMount(){
          window.scroll(0,0)
     } 

     render() {

          const User = this.props.user;

          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                    

               <Cart user={User} /> 
               
               <div className="Desktop">
               <FooterDesktop/>
               </div>

              
               
          </Fragment>
          )
     }
}

export default CartPage

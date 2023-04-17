import React, { Component, Fragment } from 'react'
import OrderList from '../components/Cart/OrderList'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
 

export class OrderListPage extends Component {

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

                                 

               <OrderList user={User} /> 
               
               <div className="Desktop">
               <FooterDesktop/>
               </div>

               
               
          </Fragment>
          )
     }
}

export default OrderListPage

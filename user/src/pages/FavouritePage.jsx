import React, { Component, Fragment } from 'react'
import Favourite from '../components/Favourite/Favourite'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'

class FavouritePage extends Component {
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

                                      

               <Favourite user={User} /> 
               
               <div className="Desktop">
               <FooterDesktop/>
               </div>

              
               
          </Fragment>
          )
     }
}

export default FavouritePage

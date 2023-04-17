import React, { Component, Fragment } from 'react'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Profile from '../components/common/Profile'



class ProfilePage extends Component {
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
                                

               <Profile user = {this.props.user} />  

               <div className="Desktop">
               <FooterDesktop/>
               </div>
             
               
          </Fragment>
          )
     }
}



export default ProfilePage
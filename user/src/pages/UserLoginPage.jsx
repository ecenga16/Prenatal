import React, { Component, Fragment } from 'react'
import NavMenuDesktop from '../components/common/NavMenu'
import FooterDesktop from '../components/common/Footer'
import UserLogin from '../components/common/UserLogin'


 class UserLoginPage extends Component {
  componentDidMount(){
    window.scroll(0,0);
   }
  render() {
    return (

        <Fragment>
              <div className="Desktop">
               <NavMenuDesktop />
                    </div>

                    

                    <UserLogin/>



                    <div className="Desktop">
                    <FooterDesktop/>
                    </div>

                  


        </Fragment>
    )
  }
}

export default UserLoginPage

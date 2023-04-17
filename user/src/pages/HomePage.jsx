import React, { Component, Fragment } from 'react'
import FeaturedProducts from '../components/home/FeaturedProducts'
import Categories from '../components/home/Categories'
import Collection from '../components/home/Collection'
import NewArrival from '../components/home/NewArrival'
import HomeTop from '../components/home/HomeTop'
import NavMenuDesktop from '../components/common/NavMenu'
import FooterDesktop from '../components/common/Footer'

export class HomePage extends Component {


     componentDidMount(){
          window.scroll(0,0);
         }

         
     render() {
          return (
               <Fragment>
                    <NavMenuDesktop />
                    <HomeTop />           
                    <FeaturedProducts/>
                    <NewArrival/>
                    <Categories />
                    <Collection/>
                    <FooterDesktop/>
               </Fragment>
          )
     }
}

export default HomePage
import React, { Component } from 'react'
import { Fragment } from 'react'
import AppURL from '../api/AppURL'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import Category from '../components/ProductDetails/Category'
import axios from 'axios'

class ProductCategoryPage extends Component {

     constructor(props){
          super(props);
          this.state={
               Category:props.match.params.category,
               ProductData:[] 
          }
     }

     componentDidMount(){
          window.scroll(0,0)
          axios.get(AppURL.ProductListByCategory(this.state.Category))
          .then(response => {
               this.setState({ProductData:response.data});
          })
          .catch(error => {
               console.error(error);
          });
     } 

     render() {
          return (
              <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                  

               <Category Category={this.state.Category} ProductData={this.state.ProductData} /> 

               <div className="Desktop">
               <FooterDesktop/>
               </div>

               

          </Fragment>
          )
     }
}

export default ProductCategoryPage
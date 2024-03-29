import React, { Component } from 'react'
import { Fragment } from 'react'
import AppURL from '../api/AppURL'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import axios from 'axios'
import SubCategory from '../components/ProductDetails/SubCategory'

class ProductSubCategoryPage extends Component {
     constructor({match}){
          super();
          this.state={
               Category:match.params.category,
               SubCategory:match.params.subcategory,
               ProductData:[] 
          }
     }

     componentDidMount(){
          window.scroll(0,0)
          // alert(this.state.Category);
          axios.get(AppURL.ProductListBySubCategory(this.state.Category,this.state.SubCategory)).then(response =>{

               this.setState({ProductData:response.data});         

          }).catch(error=>{

          });

     } 


     render() {
          return (
               <Fragment> 
               <div className="Desktop">
                <NavMenuDesktop /> 
               </div>

                                 

               <SubCategory Category={this.state.Category} SubCategory={this.state.SubCategory} ProductData={this.state.ProductData} />


               <div className="Desktop">
               <FooterDesktop/>
               </div>

             

          </Fragment>
          )
     }
}

export default ProductSubCategoryPage
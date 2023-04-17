import React, { Component, Fragment } from 'react'
import AppURL from '../api/AppURL'
import FooterDesktop from '../components/common/Footer'
import NavMenuDesktop from '../components/common/NavMenu'
import ProductDetails from '../components/ProductDetails/ProductDetails'
import axios from 'axios'

class ProductDetailsPage extends Component {

     constructor({match}){
          super(); 
          this.state={
               code:match.params.code,
               ProductData:[],
               isLoading:"",
               mainDiv:"d-none" 
          }
     }

     componentDidMount(){
          window.scroll(0,0)

          axios.get(AppURL.ProductDetails(this.state.code)).then(response =>{
               
               this.setState({ProductData:response.data,isLoading:"d-none",
               mainDiv:""});         

          }).catch(error=>{

          });
     }

     render() {

          const User = this.props.user;

          if(this.state.mainDiv == "d-none"){

               return (
                    <Fragment> 
                    <div className="Desktop">
                     <NavMenuDesktop /> 
                    </div>
     
                                        
     
                    
                    
                    <div className="Desktop">
                    <FooterDesktop/>
                    </div>
     
                  
                    
               </Fragment>
               )


          }else{


               return (
                    <Fragment> 
                    <div className="Desktop">
                     <NavMenuDesktop /> 
                    </div>
     
                                     
     
                    <ProductDetails data={this.state.ProductData} user={User} /> 
                    
                    
                    <div className="Desktop">
                    <FooterDesktop/>
                    </div>
     
                   
                    
               </Fragment>
               )


          }




          
     }
}

export default ProductDetailsPage

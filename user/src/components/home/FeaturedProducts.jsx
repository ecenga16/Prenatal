import React, { Component, Fragment } from 'react'
import { Link } from 'react-router-dom'
import AppURL from '../../api/AppURL';
import axios from 'axios'

class FeaturedProducts extends Component {
   

     constructor(){
          super();
          this.state={
               ProductData:[]               
          }
     }

     

     componentDidMount(){
          axios.get(AppURL.ProductListByRemark("FEATURED")).then(response =>{

               this.setState({ProductData:response.data});         

          }).catch(error=>{

     
          });
     } 


     
     render() {

          const FeaturedList = this.state.ProductData;
          const MyView = FeaturedList.map((FeaturedList,i)=>{

          if(FeaturedList.special_price=="na"){
               return  <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+FeaturedList.id}>
                 <div class="image-box card">
                   <img class="center" src={FeaturedList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{FeaturedList.tittle}</p>
                     <p class="product-price-on-card">Price: €{FeaturedList.price}</p>
                   </div>
                 </div>
               </Link>
             </div>

          }
          else{

               return  <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+FeaturedList.id}>
                 <div class="image-box card">
                   <img class="center" src={FeaturedList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{FeaturedList.tittle}</p>
                     <p class="product-price-on-card">
                       Price:&nbsp; &nbsp;
                       <span class="line-through text-secondary">€{FeaturedList.price}  </span> &nbsp;
                       €{FeaturedList.special_price}
                     </p>
                   </div>
                 </div>
               </Link>
             </div>

          } 


          });


          return (
               <Fragment>
               <div className="container mx-auto">
                 <div className="text-center">
                 <div className="section-title text-center mb-55"><h2>FEATURED PRODUCTS</h2></div>
                   <div className="flex flex-wrap">
                     {MyView}
                   </div>
                 </div>
               </div>
             </Fragment>
          )
     }
}
export default FeaturedProducts
import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'
import { Link } from 'react-router-dom'

class Collection extends Component {

     constructor(){
          super();
          this.state={
               ProductData:[],
                             
          }
     }
     componentDidMount(){
          axios.get(AppURL.ProductListByRemark("COLLECTION")).then(response =>{
               
               this.setState({ProductData:response.data});         
          }).catch(error=>{
          });
     } 
     render() {
          const CollectionList = this.state.ProductData;
          const MyView = CollectionList.map((CollectionList,i)=>{

          if(CollectionList.special_price=="na"){
               return  <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+CollectionList.id}>
                 <div class="image-box card">
                   <img class="center" src={CollectionList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{CollectionList.tittle}</p>
                     <p class="product-price-on-card">Price: €{CollectionList.price}</p>
                   </div>
                 </div>
               </Link>
             </div>

          }
          else{

               return  <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+CollectionList.id}>
                 <div class="image-box card">
                   <img class="center" src={CollectionList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{CollectionList.tittle}</p>
                     <p class="product-price-on-card">
                       Price:&nbsp; &nbsp;
                       <span class="line-through text-secondary">€{CollectionList.price}  </span> &nbsp;
                       €{CollectionList.special_price}
                     </p>
                   </div>
                 </div>
               </Link>
             </div>

          } 
 
          });
          return (
            <Fragment>
            <div className={this.state.mainDiv}>
            <div className="container mx-auto">

              <div className="text-center" fluid={true}>
                <div className="section-title text-center mb-55"><h2>PRODUCT COLLECTION</h2></div>
                <div className="flex flex-wrap">
                  {MyView}
                </div>
                </div>
              </div>
            </div>
          </Fragment>
          )
     }
}
export default Collection
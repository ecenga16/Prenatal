import React, { Component } from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'

class SubCategory extends Component {
     render() {

          const MyList = this.props.ProductData;
          const Category = this.props.Category;
          const SubCategory = this.props.SubCategory;
          const MyView = MyList.map((ProductList,i)=>{

          if(ProductList.special_price=="na"){
               return  <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+ProductList.id}>
                 <div class="image-box card">
                   <img class="center" src={ProductList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{ProductList.tittle}</p>
                     <p class="product-price-on-card">Price: €{ProductList.price}</p>
                   </div>
                 </div>
               </Link>
             </div>

          }
          else{

               return   <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link class="text-link" to={"/productdetails/"+ProductList.id}>
                 <div class="image-box card">
                   <img class="center" src={ProductList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{ProductList.tittle}</p>
                     <p class="product-price-on-card">
                       Price:&nbsp; &nbsp;
                       <span class="line-through text-secondary">€{ProductList.price}  </span> &nbsp;
                       €{ProductList.special_price}
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
              <div className="breadbody"></div>
          
              <div className="section-title text-center mb-10 mt-2">
                <h2>{Category} / {SubCategory}</h2>
              </div>
          
              <div className="flex flex-wrap justify-center">
                {MyView}
              </div>
            </div>
          </Fragment>
          )
     }
}

export default SubCategory

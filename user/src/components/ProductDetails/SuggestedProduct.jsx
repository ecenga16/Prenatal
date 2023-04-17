import React, { Component, Fragment } from 'react'
import { Link } from 'react-router-dom'
import AppURL from '../../api/AppURL';
import axios from 'axios'

class SuggestedProduct extends Component {

     constructor(){
          super();
          this.state={
               ProductData:[],
          }
     }

     componentDidMount(){ 
          let subcategory = this.props.subcategory;

          axios.get(AppURL.SimilarProduct(subcategory)).then(response =>{
               
               this.setState({ProductData:response.data});         

          }).catch(error=>{

          });
     }


     render() {

          const MyList = this.state.ProductData;

          if(MyList.length>0){
               const MyView = MyList.map((ProductList,i)=>{

                    if(ProductList.special_price=="na"){
                         return <div class="p-1 w-full xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
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

  <div className="text-center" fluid={true}>
    <div className="section-title text-center mb-55">
      <h2>YOU MAY ALSO LIKE</h2>
    </div>

    <div className="flex flex-wrap">
      {MyView}
    </div>
    </div>

  </div>
</Fragment>
               ) 


          } 
          else{


               return (
                    <Fragment>
                    <div className="container mx-auto">
                 
                   <div className="text-center" fluid={true}>
                     <div className="section-title text-center mb-55">
                       <h2>YOU MAY ALSO LIKE</h2>
                     </div>
                 
                     <p>There have no similar product </p>
                     </div>
                     </div>

                
     
                   </Fragment>
               ) 


          } 



          
     }
}

export default SuggestedProduct

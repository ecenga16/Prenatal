import React, { Component, Fragment } from 'react'
import { Link, Redirect } from 'react-router-dom'
import AppURL from '../../api/AppURL';
import axios from 'axios'
import cogoToast from 'cogo-toast';

class Favourite extends Component {
     constructor(){
          super();
          this.state={
               ProductData:[],
               isLoading:"",
               mainDiv:"d-none",
               PageRefreshStatus:false,
                              
          }
     }


     componentDidMount(){
          window.scroll(0,0)
          axios.get(AppURL.FavouriteList(this.props.user.email)).then(response =>{               
               this.setState({ProductData:response.data,isLoading:"d-none",
               mainDiv:" "});         

          }).catch(error=>{

          });
     } 

     removeItem = (event) => {
          let product_code = event.target.getAttribute('data-code');
          let email = this.props.user.email

          axios.get(AppURL.FavouriteRemove(product_code,email)).then(response =>{               
              cogoToast.success("Product Item Remove",{position:'top-right'});   
              this.setState({PageRefreshStatus:true})       
 
          }).catch(error=>{
               cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
          });

     } // end Remove Item Mehtod 


     PageRefresh =() => {
          if(this.state.PageRefreshStatus===true){
               let URL = window.location;
               return (
                    <Redirect to={URL} />
               )
          }
     }

     render() { 

          if(!localStorage.getItem('token')){
               return <Redirect to="/login" />
          }

          const FevList = this.state.ProductData;
          const MyView = FevList.map((ProductList,i)=>{
               return <div class="p-0 w-full xl:w-1/4 lg:w-1/4 md:w-1/4 sm:w-1/2">
               <div class="image-box card w-full">
                 <img class="center w-3/4" src={ProductList.image} />
                 <div class="card-body">
                   <p class="product-name-on-card">{ProductList.product_name}</p>
                   <button onClick={this.removeItem} data-code={ProductList.product_code} class="btn btn-sm">
                     <i class="fa fa-trash-alt"></i> Remove
                   </button>
                 </div>
               </div>
             </div>
          });



          return (
               <Fragment>
               <div className="container mx-auto text-center">
                 <div className="mb-55">
                   <h2 className="text-3xl font-bold mb-5">MY FAVOURITE ITEMS</h2>
                 </div>
             
                 <div className="flex flex-wrap justify-center">
                   {MyView}
                 </div>
               </div>
               {this.PageRefresh()}
             </Fragment>
          )
     }
}

export default Favourite

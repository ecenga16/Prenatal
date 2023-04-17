import React, { Component } from 'react'
import { Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'
import cogoToast from 'cogo-toast';
import { Redirect } from 'react-router-dom';

export class OrderList extends Component {
     constructor(){
          super();
          this.state={
               ProductData:[],
               show:false, 

               name:"",
               rating:"",
               comment:"",
               product_name:"",
               product_code:"",
               ReviewModal:false

          }
     }

     componentDidMount(){
          let email = this.props.user.email;
          axios.get(AppURL.OrderListByUser(email)).then(response =>{
               
               this.setState({ProductData:response.data});         

          }).catch(error=>{

          });
     } 


     ReviewModalOpen = (product_code,product_name) =>{
          this.setState({ ReviewModal:true,product_code:product_code,product_name:product_name})
      };  


     ReviewModalClose = () =>{
          this.setState({ ReviewModal:false})
      };  

    

      nameOnChange = (event) => {
          let name = event.target.value;
          this.setState({name:name})
      }

      RatingOnChange = (event) => {
          let rating = event.target.value;
          this.setState({rating:rating})
      }

      CommentOnChanage = (event) => {
          let comment = event.target.value;
          this.setState({comment:comment})
      }


      PostReview = () => {
           let product_code = this.state.product_code;
           let product_name = this.state.product_name;
           let rating = this.state.rating;
           let comment = this.state.comment;
           let name = this.state.name;

           if(name.length===0){
               cogoToast.error("Name Is Required",{position:'top-right'});
          }
          else if(comment.length===0){
               cogoToast.error("Comment Is Required",{position:'top-right'});
          }
          else if(rating.length===0){
               cogoToast.error("Rating Is Required",{position:'top-right'});
          }
          else if(comment.length>50){
               cogoToast.error("Comments can't more then 150 character",{position:'top-right'});
          }
          else{
               
               let MyFromData = new FormData();
               MyFromData.append('product_code',product_code)
               MyFromData.append('product_name',product_name)
               MyFromData.append('reviewer_name',name)
               MyFromData.append('reviewer_photo',"")
               MyFromData.append('reviewer_rating',rating)
               MyFromData.append('reviewer_comments',comment)

     axios.post(AppURL.PostReview,MyFromData).then(response =>{ 

          if(response.data===1){
               cogoToast.success("Review Submitted",{position:'top-right'}); 
               this.ReviewModalClose();
          }else{
               cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
          }
               }).catch(error=>{
                    cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
     
               });
                

          } 

      } // End Post Review Method


     render() {

          if(!localStorage.getItem('token')){
               return <Redirect to="/login" />
          }

          const MyList = this.state.ProductData;         
          const MyView = MyList.map((ProductList,i)=>{
               return <div className="flex flex-wrap items-center">
               <div className="md:w-1/2 lg:w-1/2 sm:w-1/2 xs:w-1/2">
                 <h5 className="text-xl font-semibold mb-2">{ProductList.product_name}</h5>
                 <h6 className="mb-2">Quantity = {ProductList.quantity}</h6>
                 <p className="mb-2">{ProductList.size} | {ProductList.color}</p>
                 <h6 className="mb-2">Price = {ProductList.unit_price} x {ProductList.quantity} = {ProductList.total_price}€</h6>
                 <h6 className="mb-2">Status = {ProductList.order_status}</h6>
               </div>
               <div className="md:w-1/2 lg:w-1/2 sm:w-1/2 xs:w-1/2 ">
                 <button onClick={this.ReviewModalOpen.bind(this, ProductList.product_code, ProductList.product_name)} className="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded mt-2">Post Review</button>
               </div>
               <hr className="w-full mt-2 mb-2"/>
             </div>


          });


          return (
               <Fragment>
    <div className="container mx-auto">
        <div className="text-center mb-10">
            <h2 className="text-3xl font-bold">Order History By ( {this.props.user.name} )</h2>
        </div>    <div className="p-4">
        <div className="bg-white rounded-lg shadow">
            <div className="p-4">
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                    {MyView}
                </div>
            </div>
        </div>
    </div>
</div>

<div className={this.state.ReviewModal ? "block fixed inset-0 z-50 overflow-auto bg-black bg-opacity-50" : "hidden"}>
    <div className="bg-white p-4 rounded-lg mx-auto mt-24" style={{ maxWidth: "600px" }}>
        <div className="text-center mb-6">
            <h6 className="text-xl font-bold"><i className="fa fa-bell"></i> Post Your Review</h6>
        </div>
        
        <div className="grid grid-cols-1 gap-4">
            <div>
                <label className="block text-gray-700 font-bold mb-2">Your Name</label>
                <input onChange={this.nameOnChange} className="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" type="text" placeholder={this.props.user.name} />
            </div>
            
            <div>
                <label className="block text-gray-700 font-bold mb-2">Select Product Rating</label>
                <select onChange={this.RatingOnChange} className="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
                    <option value="">Choose</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            
            <div>
                <label className="block text-gray-700 font-bold mb-2">Your Comment</label>
                <textarea onChange={this.CommentOnChanage} className="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" rows="2" placeholder="Your Comment"></textarea>
            </div>
        </div>
        
        <div className="flex justify-end mt-4">
            <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline mr-2" onClick={this.PostReview}>Post</button>
            <button className="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" onClick={this.ReviewModalClose}>Close</button>
        </div>
    </div>
</div>
</Fragment>



          )
     }
}

export default OrderList

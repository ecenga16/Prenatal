import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'
import cogoToast from 'cogo-toast';
import { Redirect } from 'react-router-dom';

class Cart extends Component {

     constructor(){
          super();
          this.state={
               ProductData:[],
               isLoading:"",
               mainDiv:"d-none",
               PageRefreshStatus:false,
               PageRedirectStaus:false,

               confirmBtn:"Confirm Order",
               city:"",
               payment:"",
               name:"",
               address:""
                              
          }
     }


     componentDidMount(){
          axios.get(AppURL.CartList(this.props.user.email)).then(response =>{
               
               this.setState({ProductData:response.data,isLoading:"d-none",
               mainDiv:" "});         

          }).catch(error=>{

          });
     } 


     removeItem = (id) => {

      axios.get(AppURL.RemoveCartList(id)).then(response =>{ 

     if(response.data===1){
          cogoToast.success("Cart Item Remove",{position:'top-right'}); 
          this.setState({PageRefreshStatus:true})   
     }else{
          cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
     }
          }).catch(error=>{
               cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});

          });

     } 

     PageRefresh =() => {
          if(this.state.PageRefreshStatus===true){
               let URL = window.location;
               return (
                    
                    <Redirect to={URL} />
               )
          }
     }

      

     ItemPlus = (id,quantity,price) => {

          axios.get(AppURL.CartItemPlus(id,quantity,price)).then(response =>{ 
    
         if(response.data===1){
              cogoToast.success("Item Quantity Increased",{position:'top-right'}); 
              this.setState({PageRefreshStatus:true})   
         }else{
              cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
         }
              }).catch(error=>{
                   cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
    
              });
    
         } 


         ItemMinus = (id,quantity,price) => {

          axios.get(AppURL.CartItemMinus(id,quantity,price)).then(response =>{ 
    
         if(response.data===1){
              cogoToast.success("Item Quantity Decreased",{position:'top-right'}); 
              this.setState({PageRefreshStatus:true})   
         }else{
              cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
         }
              }).catch(error=>{
                   cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
    
              });
    
         } 


         cityOnChange = (event) => {
              let city = event.target.value;
              this.setState({city:city})
         }

         paymentMethodOnChange = (event) => {
          let payment = event.target.value;
          this.setState({payment:payment})
     }

     nameOnChange = (event) => {
          let name = event.target.value;
          this.setState({name:name})
     }

     addressOnChange = (event) => {
          let address = event.target.value;
          this.setState({address:address})
     }

     confirmOnClick = () => {
          let city = this.state.city;
          let payment = this.state.payment;
          let name = this.state.name;
          let address = this.state.address;
          let email = this.props.user.email;

          if(city.length===0){
               cogoToast.error("Please Select City",{position:'top-right'});
          }
          else if(payment.length===0){
               cogoToast.error("Please Select Payment",{position:'top-right'});
          }
          else if(name.length===0){
               cogoToast.error("Please Select Your Name",{position:'top-right'});
          }
          else if(address.length===0){
               cogoToast.error("Please Select Your Address",{position:'top-right'});
          }
          else{

               let invoice = new Date().getTime();
               let MyFromData = new FormData();
               MyFromData.append('city',city)
               MyFromData.append('payment_method',payment)
               MyFromData.append('name',name)
               MyFromData.append('delivery_address',address)
               MyFromData.append('email',email)
               MyFromData.append('invoice_no',invoice)
               MyFromData.append('delivery_charge',"00");

     axios.post(AppURL.CartOrder,MyFromData).then(response =>{ 

          if(response.data===1){
               cogoToast.success("Order Request Received",{position:'top-right'}); 
               this.setState({PageRedirectStaus:true})   
          }else{
               cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
          }
               }).catch(error=>{
                    cogoToast.error("Your Request is not done ! Try Aagain",{position:'top-right'});
     
               });
          } 

     } 
     
     PageRedirect = () => {
          if(this.state.PageRedirectStaus===true){
               return (
                    <Redirect to="/orderlist" />
               )

          }
     }


     render() { 


          if(!localStorage.getItem('token')){
               return <Redirect to="/login" />
          }

          const MyList = this.state.ProductData;
          let totalPriceSum=0;
          const MyView = MyList.map((ProductList,i)=>{
           totalPriceSum = totalPriceSum+parseInt(ProductList.total_price)    
               return <div class="p-4">
               <div class="bg-white rounded-lg shadow-lg">
                 <div class="p-4 md:flex">
                   <div class="md:w-1/4">
                     <img class="w-full" src={ProductList.image} />
                   </div>
                   <div class="md:w-1/2 md:ml-4">
                     <h5 class="text-lg font-semibold mb-2">{ProductList.product_name}</h5>
                     <h6 class="text-sm mb-2"> Quantity = {ProductList.quantity} </h6>
                     <p class="text-sm mb-2">{ProductList.size} | {ProductList.color}</p>
                     <h6 class="text-lg font-semibold mb-2">Price = {ProductList.unit_price} x {ProductList.quantity} = {ProductList.total_price}€</h6>
                   </div>
                   <div class="md:w-1/4 md:flex md:justify-end">
                     <button onClick={()=>this.removeItem(ProductList.id)} class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded-lg mt-2 mx-1 btn-lg h-11">
                       <i class="fa fa-trash-alt"></i>
                     </button>
                     <button onClick={()=>this.ItemPlus(ProductList.id,ProductList.quantity,ProductList.unit_price)} class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 h-11 px-2 rounded-lg mt-2 mx-1 btn-lg">
                       <i class="fa fa-plus"></i>
                     </button>
                     <button onClick={()=>this.ItemMinus(ProductList.id,ProductList.quantity,ProductList.unit_price)} class="bg-gray-500 hover:bg-gray-600 text-white font-bold py-2 h-11 px-2 rounded-lg mt-2 mx-1 btn-lg">
                       <i class="fa fa-minus"></i>
                     </button>
                   </div>
                 </div>
               </div>
             </div>
          })



          return (
              <Fragment>

<div className="max-w-full text-center">
                       <h2 className="text-4xl font-bold py-8 pl-67"><b>Product Cart List</b></h2>
</div>
<div className="flex flex-col md:flex-row">

    <div className="md:w-3/4 p-1">
        {MyView}
    </div> 

    <div className="md:w-1/4 p-1">
        <div className="bg-white rounded-lg p-4">
            <div className="mb-2">
                <h5 className="text-red-500 font-bold">Total Due: {totalPriceSum}  €</h5>
            </div>
            <div className="mb-2">
                <label className="block font-medium">Choose City</label>
                <select onChange={this.cityOnChange} className="form-select">
                    <option value="">Choose</option>
                    <option value="Shkoder">Shkoder</option>
                    <option value="Lezhe">Lezhe</option>
                    <option value="Lac">Lac</option>
                    <option value="Kukes">Kukes</option>
                    <option value="Diber">Diber</option>
                    <option value="Elbasan">Elbasan</option>
                    <option value="Tirane">Tirane</option>
                    <option value="Durres">Durres</option>
                    <option value="Kavaje">Kavaje</option>
                    <option value="Berat">Berat</option>
                    <option value="Vlore">Vlore</option>
                    <option value="Sarande">Sarande</option>
                    <option value="Gjirokaster">Gjirokaster</option>
                    <option value="Fier">Fier</option>
                </select>
            </div>
            <div className="mb-2">
                <label className="block font-medium">Choose Payment Method</label>
                <select onChange={this.paymentMethodOnChange}  className="form-select">
                    <option value="">Choose</option>
                    <option value="Cash On Delivery">Cash On Delivery</option>
                    <option value="Credit Card">Credit Card</option>
                </select>
            </div>
            <div className="mb-2">
                <label className="block font-medium">Your Name</label>
                <input onChange={this.nameOnChange}  className="form-input border-inherit	border-2 w-[18rem]" type="text" placeholder=""/>
            </div>
            <div className="mb-2">
                <label className="block font-medium ">Delivery Address</label>
                <textarea onChange={this.addressOnChange}   rows={2}  className="form-input border-2 w-[18rem] border-inherit" type="text" placeholder=""></textarea>
            </div>
            <div className="mb-2">
                <button onClick={this.confirmOnClick}  className="btn site-btn w-full">{this.state.confirmBtn}</button>
            </div>
        </div>
    </div> 
</div>

{this.PageRefresh()}

{this.PageRedirect()}

              </Fragment>
          )
     }
}

export default Cart

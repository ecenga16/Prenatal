import React, { Component, Fragment } from 'react'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css"; 
import "slick-carousel/slick/slick-theme.css";
import AppURL from '../../api/AppURL';
import axios from 'axios';
import { Link } from 'react-router-dom'

class NewArrival extends Component {

     constructor(props){
          super(props);
          this.state={
               ProductData:[]
          }
          this.next=this.next.bind(this);
          this.previous=this.previous.bind(this)
     }
     next(){
          this.slider.slickNext();
     }
     previous(){
          this.slider.slickPrev();
     }


     componentDidMount(){
          axios.get(AppURL.ProductListByRemark("NEW")).then(response =>{

               this.setState({ProductData:response.data});    
     

          }).catch(error=>{

          });
     } 


     render() {

          const NewList = this.state.ProductData;
          const MyView = NewList.map((NewList,i)=>{

          if(NewList.special_price=="na"){
               return   <div className="w-full xl:w-1/4 lg:w-1/4 md:w-1/3 sm:w-1/2">
               <Link className="text-link" to={"/productdetails/" + NewList.id}>
                 <div className="image-box card">
                   <img className="center w-3/4 mx-auto" src={NewList.image} />
                   <div className="card-body">
                     <p className="product-name-on-card line-clamp-2">{NewList.tittle}</p>
                     <p className="product-price-on-card">
                       Price: €{NewList.price}
                     </p>
                   </div>
                 </div>
               </Link>
             </div> 
             

          }
          else{

               return   <div class="w-full sm:w-1/2 md:w-1/3 lg:w-1/4 p-2">
               <Link class="text-link" to={"/productdetails/" + NewList.id}>
                 <div class="image-box card">
                   <img class="center" src={NewList.image} />
                   <div class="card-body">
                     <p class="product-name-on-card line-clamp-2">{NewList.tittle}</p>
                     <p class="product-price-on-card">
                       Price:{" "}
                       <span class="line-through text-secondary">€{NewList.price}</span>{" "}
                       €{NewList.special_price}
                     </p>
                   </div>
                 </div>
               </Link>
             </div>

          } 

          });


          var settings = {
               dots: false,
               infinite: true,
               speed: 500,
               autoplay: true,
               autoplaySpeed:3000,
               slidesToShow: 4,
               slidesToScroll: 1,
               initialSlide: 0,
               arrows: false,
               responsive: [
                 {
                   breakpoint: 1024,
                   settings: {
                     slidesToShow: 4,
                     slidesToScroll: 1,
                     infinite: true,
                     dots: true
                   }
                 },
                 {
                   breakpoint: 600,
                   settings: {
                     slidesToShow: 2,
                     slidesToScroll: 1,
                     initialSlide: 2
                   }
                 },
                 {
                   breakpoint: 480,
                   settings: {
                     slidesToShow: 1,
                     slidesToScroll: 1
                   }
                 }
               ]
             };
          return ( 
               <div className="container mx-auto text-center">
               <div className="section-title mb-10 flex items-center justify-center">
                 <h1 className="text-3xl"><b> NEW ARRIVALS</b> </h1>
                 <button className="btn btn-sm ml-2 site-btn" onClick={this.previous}>
                   <i className="fa fa-angle-left"></i>
                 </button>
                 <button className="btn btn-sm ml-2 site-btn" onClick={this.next}>
                   <i className="fa fa-angle-right"></i>
                 </button>
               </div>
               <div className="flex justify-center">
                 <div className="w-full">
                   <Slider ref={(c) => (this.slider = c)} {...settings}>
                     {MyView}
                   </Slider>
                 </div>
               </div>
             </div>
          )
     
}}
export default NewArrival
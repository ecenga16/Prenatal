import React, { Component, Fragment } from 'react'
import validation from '../../validation/validation';
import axios from 'axios' 
import AppURL from '../../api/AppURL';

export class Contact extends Component {


     constructor(){
          super();
          this.state={
               name:"",
               email:"",
               message:""
          }
     }

          nameOnChange =(event)=>{
               let name = event.target.value;
               // alert(name);
               this.setState({name:name})
          }

          emailOnChange =(event)=>{
               let email = event.target.value;
               // alert(email);
               this.setState({email:email})
          }

          messageOnChange =(event)=>{
               let message = event.target.value;
               // alert(message);
               this.setState({message:message})
          }

          onFormSubmit =(event)=>{
               let name = this.state.name;
               let email = this.state.email;
               let message = this.state.message;
               let sendBtn = document.getElementById('sendBtn');
               let contactForm = document.getElementById('contactForm');

               if(message.length==0){
                    alert("Please write your message");
               }
               else if(name.length==0){
                    alert("Please write down our name");
               }
               else if(email.length==0){
                    alert("Please write down our Email");
               }
               else if(!(validation.NameRegx).test(name)){
                    alert("Invaid Name");
               }
               else{
                    
     sendBtn.innerHTML="Sending...";       
     let MyFormData = new FormData();
     MyFormData.append("name",name)
     MyFormData.append("email",email)
     MyFormData.append("message",message)

     axios.post(AppURL.PostContact,MyFormData).then(function (response) {
               if(response.status==200 && response.data==1){
                    alert("Message Send Successfully");
                    sendBtn.innerHTML="Send";
                    contactForm.reset();
               }
               else{
               alert("error"); 
               sendBtn.innerHTML="Send";

               }
          })
          .catch(function (error) {
          alert(error);
          sendBtn.innerHTML="Send";

          });
               }

               event.preventDefault();

          }

     render() {
          return (
               <Fragment>
                 <div className="p-2 grid grid-cols-1 md:grid-cols-2 gap-4">
                   <div className="shadow-sm bg-white mt-2">
                     <div className="text-center flex justify-center">
                       <form id="contactForm" onSubmit={this.onFormSubmit} className="onboardForm">
                         <h4 className="section-title-login">CONTACT WITH US </h4>
                         <h6 className="section-sub-title">Please Contact With Us </h6>
                         <input onChange={this.nameOnChange} className="form-control m-2" type="text" placeholder="Enter Your Name" />
                         <input onChange={this.emailOnChange} className="form-control m-2" type="email" placeholder="Enter Email" />
                         <textarea onChange={this.messageOnChange} className="form-control m-2" rows={3} placeholder="Message" />
                         <button id="sendBtn" type="submit" className="btn-block m-2 site-btn-login bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"> Send </button>
                       </form>
                     </div>
                   </div>
                   <div className="p-0 Desktop m-0">
                     <br></br><br></br>
                     <p className="section-title-contact">
                     Rruga E Elbasanit, Qendra Tregtare Teg, Tirana, Albania
                     </p>
                     <iframe src="https://www.google.com/maps/embed/v1/place?q=TEG+-+Tirana+East+Gate,+Tirana–Elbasan+Highway,+Tirana,+Albania&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8" width="500" height="450" styles="border:0;" allowfullscreen="" loading="lazy"></iframe>                   </div>
                 </div>
             </Fragment> 
          )
     }
}

export default Contact
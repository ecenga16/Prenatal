import React, { Component, Fragment } from 'react'
import { Link } from 'react-router-dom'
import AppURL from '../../api/AppURL';
import axios from 'axios'


export class Footer extends Component {

     constructor () {
          super();
          this.state={
               address:"",
               facebook_link:"",
               twitter_link:"",
               instagram_link:"",
               copyright_text:""
          }
     }

     componentDidMount() {
          axios.get(AppURL.AllSiteInfo).then(response =>{
               let StatusCode = response.status;
               if (StatusCode==200) {

                    let JsonData = (response.data)[0];
                    this.setState({
                         address:JsonData['address'],
                         facebook_link:JsonData['facebook_link'],
                         twitter_link:JsonData['twitter_link'],
                         instagram_link:JsonData['instagram_link'],
                         copyright_text:JsonData['copyright_text'],

                    });
               }

          }).catch(error=> {

          });
     }

     render() {
          return (
               <Fragment>
                    
               <div className="bg-gray-100 mt-5 pt-3 shadow-sm"> 
                 <div className="container mx-auto">
                   <div className="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4 ml-11">
                     <div className="p-2">
                       <h5 className="font-bold mb-2">OFFICE ADDRESS</h5>
                       <p className="text-sm">{this.state.address}</p>
                       <h5 className="font-bold mt-4 mb-2">SOCIAL LINK</h5>
                       <div className="flex space-x-3">
                         <a href={this.state.facebook_link}><i className="fab fa-facebook text-2xl"></i></a>
                         <a href={this.state.instagram_link}><i className="fab fa-instagram text-2xl"></i></a>
                         <a href={this.state.twitter_link}><i className="fab fa-twitter text-2xl"></i></a>
                       </div>
                     </div>
             
                     <div className="p-2 ml-7">
                       <h5 className="font-bold mb-2">THE COMPANY</h5>
                       <ul className="list-disc list-inside text-sm">
                         <li class="flex items-center"><Link to="/about" className="text-black hover:text-blue-700">About Us</Link></li>
                         <li class="flex items-center"><Link to="/" className="text-black hover:text-blue-700">Company Profile</Link></li>
                         <li class="flex items-center"><Link to="/contact" className="text-black hover:text-blue-700">Contact Us</Link></li>
                       </ul>
                     </div>
             
                     <div className="p-2 ml-7">
                       <h5 className="font-bold mb-2">MORE INFO</h5>
                       <ul className="list-disc list-inside text-sm">
                         <li class="flex items-center"><Link to="/purchase" className="text-black hover:text-blue-700">How To Purchase</Link></li>
                         <li class="flex items-center"><Link to="/privacy" className="text-black hover:text-blue-700">Privacy Policy</Link></li>
                         <li class="flex items-center"><Link to="/refund" className="text-black hover:text-blue-700">Refund Policy</Link></li>
                       </ul>
                     </div>
             
                     <div className="p-2 ml-7">
                       <h5 className="font-bold mb-2">Change Language</h5>
                      
                       <div id="google_translate_element"></div>
                     </div>
                   </div>
                 </div>
             
                 <div className="container mx-auto bg-gray-900 text-center mt-3 py-1">
                   <div className="text-white text-sm">{this.state.copyright_text}</div>
                 </div>
               </div>
               
             </Fragment>
          )
     }
}
export default Footer
import React, { Component, Fragment } from 'react'
import axios from 'axios';
import AppURL from '../../api/AppURL';


export class Purchase extends Component {
     constructor () {
          super();
          this.state={
               purchase_guide:""
          }
     }

     componentDidMount() {
          axios.get(AppURL.AllSiteInfo).then(response =>{
               let StatusCode = response.status;
               if (StatusCode==200) {

                    let JsonData = (response.data)[0]['purchase_guide'];
                    this.setState({purchase_guide:JsonData});
               }

          }).catch(error=> {

          });
     }
     render() {
          return (
               <Fragment>
               <div className="container">
                 <div className="px-2 py-2 md:py-0 md:flex md:items-center md:justify-center">
                   <div className="shadow-md bg-white my-2 md:w-3/4 lg:w-3/4 sm:w-full">
                     <h4 className="text-xl font-bold text-gray-700 md:text-center md:my-4">Purchase Page</h4>
                     <p className="text-gray-700 text-base py-4 px-4">{this.state.purchase_guide}</p>
                   </div>
                 </div>
               </div>
             </Fragment>
          )
     }
}

export default Purchase
import React, { Component, Fragment } from 'react'
import MegaMenu from './MegaMenu'
import HomeSlider from './HomeSlider'
import AppURL from '../../api/AppURL';
import axios from 'axios'
class HomeTop extends Component {
     constructor(){
          super();
          this.state ={
               MenuData:[],
               SliderData:[]
          }
     }

     componentDidMount(){
          axios.get(AppURL.AllCategory).then(response =>{ 
                this.setState({MenuData:response.data});
          }).catch(error=>{

          });

          axios.get(AppURL.AllSlider).then(response =>{ 
               this.setState({SliderData:response.data});

         }).catch(error=>{

         });
     }


     render() {
          return (
               <Fragment>
               <div className="p-0 m-0 overflow-hidden">
                   <div className="flex flex-wrap">
                     <div className="w-full lg:w-3/12 md:w-3/12 sm:w-full">
                       <MegaMenu data={this.state.MenuData} />
                     </div>
                     <div className="w-full lg:w-9/12 md:w-9/12 sm:w-full">
                       <HomeSlider data={this.state.SliderData} />
                     </div>
                 </div>
               </div>
             </Fragment>
          )
     }
}
export default HomeTop
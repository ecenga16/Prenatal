import React, { Component, Fragment } from 'react'
import AppURL from '../../api/AppURL';
import axios from 'axios'
import { Link } from 'react-router-dom';

class Categories extends Component {
     constructor(){
          super();
          this.state ={
               MenuData:[]
          }
     }
     componentDidMount(){
          axios.get(AppURL.AllCategory).then(response =>{ 
                this.setState({MenuData:response.data});
          }).catch(error=>{
               
          });
     }
     render() {
          const CatList = this.state.MenuData;
          const MyView = CatList.map((CatList,i)=>{
               return <div key={i.toString()} className="mb-5 p-0 xl:w-1/6 lg:w-1/6 md:w-1/6 sm:w-1/2">
               <Link className="text-link" to={"/productcategory/" + CatList.category_name}>
                 <div className="h-full w-full text-center ">
                   <div className="h-full flex items-center justify-center ">
                     <img className="center" src="https://www.eurobank.gr/-/media/eurobank/epistrofi/brandlogos/prenatal-logo.png?h=270&iar=0&w=400&hash=9171372C14861D8FE5FBDC293B1FE27F" />
                   </div>
                   <h5 className="category-name">{CatList.category_name}</h5>
                 </div>
               </Link>
             </div>
          })

          return (
               <Fragment>
               <div className="container mx-auto text-center">
                 <div className="mb-55">
                   <h2 className="text-3xl font-bold mt-5 mb-5">FEATURED CATEGORIES</h2>
                 </div>
             
                 <div className="flex flex-wrap justify-center ">
                   {MyView}
                 </div>
               </div>
             </Fragment>
          )
     }
}
export default Categories
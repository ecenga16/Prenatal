import React, { Component, Fragment } from 'react'
import Logo from '../../assets/images/logo.png';
import MegaMenuAll from '../home/MegaMenuAll';
import { Link, Redirect } from "react-router-dom";
import axios from 'axios';
import AppURL from '../../api/AppURL';
import { Navbar, Container, Row, Col, Button } from 'react-bootstrap';

class NavMenuDesktop extends Component{

     constructor(){
          super();
          this.state={
               SideNavState: "sideNavClose",
               ContentOverState: "ContentOverlayClose",
               Searchkey:"",
               SearchRedirectStauts:false,
               cartCount:0
          }
          this.SearchOnChange = this.SearchOnChange.bind(this);
          this.SeachOnClick = this.SeachOnClick.bind(this);
          this.searchRedirect = this.searchRedirect.bind(this);
     }

     componentDidMount(){
          let product_code = this.props.product_code;
          axios.get(AppURL.CartCount(product_code)).then((response)=>{
               this.setState({cartCount:response.data})

          })
     }



     logout = () => {
          localStorage.clear();
     }

     SearchOnChange(event){
          let Searchkey = event.target.value;
          // alert(Searchkey);
          this.setState({Searchkey:Searchkey});
     }

     SeachOnClick(){
          if(this.state.Searchkey.length>=2){
               this.setState({SearchRedirectStauts:true})
          }
     }

     searchRedirect(){
          if(this.state.SearchRedirectStauts===true){
               return <Redirect to={"/productbysearch/"+this.state.Searchkey} />
          }
     }



     MenuBarClickHandler=()=>{
          this.SideNavOpenClose();
     }

     ContentOverlayClickHandler=()=>{
          this.SideNavOpenClose();
     }


     SideNavOpenClose=()=>{
          let SideNavState = this.state.SideNavState;
          let ContentOverState = this.state.ContentOverState;
          if(SideNavState==="sideNavOpen"){
               this.setState({SideNavState:"sideNavClose",ContentOverState:"ContentOverlayClose"})

          }
          else{
               this.setState({SideNavState:"sideNavOpen",ContentOverState:"ContentOverlayOpen"})
          }
     }


     render() {
          let buttons;
          if(localStorage.getItem('token')){
               buttons = (
                <div class="flex justify-between items-center">
                <Link to="/favourite" class="btn relative">
                    <i class="fa fa-heart h-6"></i>
                    
                </Link>
            
                <Link to="/profile" class="btn text-lg">PROFILE</Link>
            
                <Link to="/" onClick={this.logout} class="btn text-lg">LOGOUT</Link>
            
                <Link to="/cart" class="cart-btn flex items-center">
                    <i class="fa fa-shopping-cart"></i>
                    <span class="ml-2">{this.state.cartCount} Items</span>
                </Link>
            
                <Link to="/orderlist" class="cart-btn mr-3">Orders</Link>
            </div>
               )

          }else{
               buttons = (
                <div class="flex justify-between items-center">
                <Link to="/favourite" class="btn relative">
                    <i class="fa fa-heart h-6"></i>
                    
                </Link>
            
                <Link to="/login" class="btn text-lg">SIGN IN</Link>
            
                <Link to="/register" class="btn text-lg">REGISTER</Link>
            
                <Link to="/cart" class="cart-btn flex items-center">
                    <i class="fa fa-shopping-cart"></i>
                    <span class="ml-2">{this.state.cartCount} Items</span>
                </Link>
            
                <Link to="/orderlist" class="cart-btn mr-3">Orders</Link>
            </div>
               )

          }



          return (
               <Fragment>
               <div className="TopSectionDown">
               <Navbar fixed={"top"} className="navbar" bg="light">
               
                   <Container fluid={"true"} className="fixed-top shadow-sm p-2 mb-0 bg-white">
                        <Row>
                             <Col lg={4} md={4} sm={12} xs={12}>
               
                             
               
                             <Link to="/"> <img className="nav-logo" src={Logo} /> </Link>
                             </Col>
               
               <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                    <div className="input-group w-100">
                    <input onChange={this.SearchOnChange} type="text" className="form-control" />
               
                    <Button onClick={this.SeachOnClick} type="button" className="btn site-btn"><i className="fa fa-search"> </i> 
                    </Button>
                    </div>
               </Col>
               
                             <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                             
                            {buttons}
               
                             </Col>
               
                        </Row> 
                  {this.searchRedirect()}
                   </Container>
               
                 </Navbar>
                 </div>
               
                 <div className={this.state.SideNavState}>
                               <MegaMenuAll />
                         </div>
               
                              <div onClick={this.ContentOverlayClickHandler} className={this.state.ContentOverState}>
               
                              </div>
               
               
               
                              </Fragment>
          )
     }
}
export default NavMenuDesktop
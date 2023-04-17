<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Support\Facades\Storage;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductList;
use App\Models\ProductDetails;
use App\Models\Category;
use App\Models\Subcategory;
use Image;

class ProductListController extends Controller
{

    public function ProductListByRemark(Request $request) {

        $remark = $request->remark;
        $productlist = ProductList::where('remark', $remark)->get();
        return $productlist;
        
    }

    public function ProductListByCategory(Request $request){
        $category = $request->category;
        $productlist = ProductList::where('category', $category)->get();
        return $productlist;

    }

    public function ProductListBySubCategory(Request $request){

        $category = $request->category;
        $subcategory = $request->subcategory;
        $productlist = ProductList::where('category', $category)->where('subcategory', $subcategory)->get();
        return $productlist;

    }
    public function ProductBySearch (Request $request) {

        $key = $request->key;
        $productList = ProductList::where('tittle','LIKE',"%{$key}%")->get();

        return $productList;
   }

   public function SimilarProduct(Request $request) {

    $subcategory = $request->subcategory;

    $productlist = ProductList::where('subcategory',$subcategory)->orderBy('id','desc')->limit(6)->get();
    return $productlist;

    }

    public function GetAllProducts(){

        $products = ProductList::all();
        return view('backend.product.products',compact('products'));

    }
    public function GetAllProduct(){

        $products = ProductList::all();
        return view('backend.product.product_all',compact('products'));

    } 


    public function AddProduct(){

        $category = Category::orderBy('category_name','ASC')->get();
        $subcategory = Subcategory::orderBy('subcategory_name','ASC')->get();
        return view('backend.product.product_add',compact('category','subcategory'));

    } 


    public function StoreProduct(Request $request){

        $request->validate([    'product_code' => 'required',    
                                'tittle' => 'required',],[ 
                           'product_code.required' => 'Input Product Code',   
                           'tittle.required' => 'Input Product Tittle',]);

        

        $image = $request->file('image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(711,960)->save('upload/product/'.$name_gen);
        $save_url = 'http://127.0.0.1:8000/upload/product/'.$name_gen;

        $product_id = ProductList::insertGetId([
            'tittle' => $request->tittle,
            'price' => $request->price,
            'special_price' => $request->special_price,
            'category' => $request->category,
            'subcategory' => $request->subcategory,
            'remark' => $request->remark,
            'brand' => $request->brand,
            'product_code' => $request->product_code,
            'image' => $save_url, 

        ]);

       

    $image1 = $request->file('image_one');
    $name_gen1 = hexdec(uniqid()).'.'.$image1->getClientOriginalExtension();
    Image::make($image1)->resize(711,960)->save('upload/productdetails/'.$name_gen1);
    $save_url1 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen1;


    $image2 = $request->file('image_two');
    $name_gen2 = hexdec(uniqid()).'.'.$image2->getClientOriginalExtension();
    Image::make($image2)->resize(711,960)->save('upload/productdetails/'.$name_gen2);
    $save_url2 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen2;


     $image3 = $request->file('image_three');
    $name_gen3 = hexdec(uniqid()).'.'.$image3->getClientOriginalExtension();
    Image::make($image1)->resize(711,960)->save('upload/productdetails/'.$name_gen3);
    $save_url3 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen3;


     $image4 = $request->file('image_four');
    $name_gen4 = hexdec(uniqid()).'.'.$image4->getClientOriginalExtension();
    Image::make($image4)->resize(711,960)->save('upload/productdetails/'.$name_gen4);
    $save_url4 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen4;

        ProductDetails::insert([
            'product_id' => $product_id,
            'image_one' => $save_url1,
            'image_two' => $save_url2,
            'image_three' => $save_url3,
            'image_four' => $save_url4,
            'short_description' => $request->short_description,
            'color' =>  $request->color,
            'size' =>  $request->size,
            'long_description' => $request->long_description,

        ]);


        $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.product')->with($notification);


    } 



    public function EditProduct($id){

        $category = Category::orderBy('category_name','ASC')->get();
        $subcategory = Subcategory::orderBy('subcategory_name','ASC')->get();
        $product = ProductList::findOrFail($id);
        $details = ProductDetails::where('product_id',$id)->get();
        return view('backend.product.product_edit',compact('category','subcategory','product','details'));

    }

    public function ProductDelete($id)
{
    $product = ProductList::findOrFail($id);
    
    $productDetails = ProductDetails::where('product_id', $id)->first();
    if ($productDetails) {
        Storage::delete([
            str_replace(url('/'), '', $productDetails->image_one),
            str_replace(url('/'), '', $productDetails->image_two),
            str_replace(url('/'), '', $productDetails->image_three),
            str_replace(url('/'), '', $productDetails->image_four)
        ]);
        $productDetails->delete();
    }
    
    $product->delete();
    


    return redirect()->route('all.product');
}

public function UpdateProduct(Request $request, $id){

    $request->validate([    'product_code' => 'required',    
    'tittle' => 'required',],[ 
'product_code.required' => 'Input Product Code',   
'tittle.required' => 'Input Product Tittle',]);


    $product = ProductList::findOrFail($id);

    $product->tittle = $request->tittle;
    $product->price = $request->price;
    $product->special_price = $request->special_price;
    $product->category = $request->category;
    $product->subcategory = $request->subcategory;
    $product->remark = $request->remark;
    $product->brand = $request->brand;
    $product->product_code = $request->product_code;

    if($request->hasFile('image')){

      
        Storage::delete($product->image);

      
        $image = $request->file('image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(711,960)->save('upload/product/'.$name_gen);
        $save_url = 'http://127.0.0.1:8000/upload/product/'.$name_gen;
        $product->image = $save_url;
    }

    $product->save();

    $details = ProductDetails::where('product_id',$id)->first();

    $details->short_description = $request->short_description;
    $details->color = $request->color;
    $details->size = $request->size;
    $details->long_description = $request->long_description;

    if($request->hasFile('image_one')){

       
        Storage::delete($details->image_one);

        
        $image1 = $request->file('image_one');
        $name_gen1 = hexdec(uniqid()).'.'.$image1->getClientOriginalExtension();
        Image::make($image1)->resize(711,960)->save('upload/productdetails/'.$name_gen1);
        $save_url1 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen1;
        $details->image_one = $save_url1;
    }

    if($request->hasFile('image_two')){

     
        Storage::delete($details->image_two);

      
        $image2 = $request->file('image_two');
        $name_gen2 = hexdec(uniqid()).'.'.$image2->getClientOriginalExtension();
        Image::make($image2)->resize(711,960)->save('upload/productdetails/'.$name_gen2);
        $save_url2 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen2;
        $details->image_two = $save_url2;
    }

    if($request->hasFile('image_three')){

      
        Storage::delete($details->image_three);

      
        $image3 = $request->file('image_three');
        $name_gen3 = hexdec(uniqid()).'.'.$image3->getClientOriginalExtension();
        Image::make($image3)->resize(711,960)->save('upload/productdetails/'.$name_gen3);
        $save_url3 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen3;
        $details->image_three = $save_url3;
    }

    if($request->hasFile('image_four')){

          
          Storage::delete($details->image_four);

      
          $image4 = $request->file('image_four');
          $name_gen4 = hexdec(uniqid()).'.'.$image3->getClientOriginalExtension();
          Image::make($image4)->resize(711,960)->save('upload/productdetails/'.$name_gen4);
          $save_url4 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen4;
          $details->image_four = $save_url4;

    }
    $details->save();

}}

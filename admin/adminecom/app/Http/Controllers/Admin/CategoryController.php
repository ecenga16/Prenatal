<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;


class CategoryController extends Controller
{
    public function AllCategory () {

        $categories = Category::all();
        $categoryDetailsArray = [];

        foreach ($categories as $value) {
            $subcategory = Subcategory::where('category_name',$value['category_name'])->get();
            
            $item = [
                'category_name' => $value['category_name'],
                'subcategory_name' => $subcategory
            ];

            array_push($categoryDetailsArray, $item);
        }


        return $categoryDetailsArray;


    }

    public function GetAllCategory(){

        $category = Category::latest()->get();
        return view('backend.category.category_view',compact('category'));

    }

    public function AddCategory(){
        return view('backend.category.category_add');
      }
  
  
      public function StoreCategory(Request $request){

        $request->validate([
            'category_name' => 'required',
        ]);


        Category::insert([
            'category_name' => $request->category_name,
        ]);

       

        return redirect()->route('all.category');
  
  
      }

      public function EditCategory($id){

        $category = Category::findOrFail($id);
        return view('backend.category.category_edit',compact('category'));

    } 


    public function UpdateCategory(Request $request){

        $category_id = $request->id;

        

        Category::findOrFail($category_id)->update([
            'category_name' => $request->category_name,
        ]);

      

        return redirect()->route('all.category');


    }

    public function DeleteCategory($id){

        $category = Category::findOrFail($id);
    
        Subcategory::where('category_name', $category->category_name)->delete();
    
        $category->delete();
    
        return redirect()->back();
    }
    

        public function GetAllSubCategory(){
            $subcategory = Subcategory::latest()->get();
                 return view('backend.subcategory.subcategory_view',compact('subcategory'));
         
             } 
         
         
             public function AddSubCategory(){
         
                 $subcategory = Category::latest()->get();
                  return view('backend.subcategory.subcategory_add',compact('subcategory'));
             }
      
      
             public function StoreSubCategory(Request $request){


                $request->validate([
                    'subcategory_name' => 'required',
                ],[
                    'subcategory_name.required' => 'Input SubCategory Name'
        
                ]);
        
        
        
                Subcategory::insert([
                    'category_name' => $request->category_name,
                    'subcategory_name' => $request->subcategory_name,
                ]);
        
               
        
                return redirect()->route('all.subcategory');
        
            }
    
            public function EditSubCategory($id){

                $category = Category::orderBy('category_name','ASC')->get();
                $subcategory = Subcategory::findOrFail($id);
                return view('backend.subcategory.subcategory_edit',compact('category','subcategory'));
        
            }
    
    
            public function UpdateSubCategory(Request $request){

                $subcategory_id = $request->id;
        
                Subcategory::findOrFail($subcategory_id)->update([
                    'category_name' => $request->category_name,
                    'subcategory_name' => $request->subcategory_name,
                ]);
        
               
        
                return redirect()->route('all.subcategory');
        
            } 
        
    
       
            public function DeleteSubCategory($id){

            Subcategory::findOrFail($id)->delete();
               
        
           return redirect()->back();
        
            } 

}

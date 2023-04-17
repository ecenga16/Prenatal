<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\HomeSliderController;
use App\Http\Controllers\Admin\ProductListController;
use App\Http\Controllers\Admin\ProductDetailsController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\ForgetController;
use App\Http\Controllers\User\ResetController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\Admin\FavouritesController;
use App\Http\Controllers\Admin\ProductCartController;

use App\Http\Controllers\User\UserController;


//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
  //  return $request->user();
//});

Route::post('/login', [AuthController::class, 'Login']);

Route::post('/register', [AuthController::class, 'Register']);

Route::post('/forgetpassword',[ForgetController::class, 'ForgetPassword']);


Route::post('/resetpassword',[ResetController::class, 'ResetPassword']);

Route::get('/user', [UserController::class, 'User'])->middleware('auth:api');

Route::get('/similar/{subcategory}', [ProductListController::class, 'SimilarProduct']);

Route::get('/reviewlist/{id}',[ReviewController::class, 'ReviewList']);



Route::get('/getvisitor',[VisitorController::class, 'GetVisitorDetails']);

Route::post('/postcontact',[ContactController::class, 'PostContactDetails']);

Route::get('/allsiteinfo',[SiteInfoController::class, 'AllSiteInfo']);

Route::get('/allcategory',[CategoryController::class, 'AllCategory']);

Route::get('/productlistbyremark/{remark}',[ProductListController::class, 'ProductListByRemark']);

Route::get('/productlistbycategory/{category}',[ProductListController::class, 'ProductListByCategory']);



Route::get('/productlistbysubcategory/{category}/{subcategory}',[ProductListController::class, 'ProductListBySubCategory']);

Route::get('/allslider/',[HomeSliderController::class, 'AllSlider']);

Route::get('/productdetails/{id}',[ProductDetailsController::class, 'ProductDetails']);

Route::get('/search/{key}',[ProductListController::class, 'ProductBySearch']);



Route::get('/favourite/{product_code}/{email}',[FavouritesController::class, 'AddFavourite']);

Route::get('/favouritelist/{email}',[FavouritesController::class, 'FavouriteList']);

Route::get('/favouriteremove/{product_code}/{email}',[FavouritesController::class, 'FavouriteRemove']);



// Cart List Route 
Route::get('/cartlist/{email}',[ProductCartController::class, 'CartList']);

Route::get('/removecartlist/{id}',[ProductCartController::class, 'RemoveCartList']);

Route::get('/cartitemplus/{id}/{quantity}/{price}',[ProductCartController::class, 'CartItemPlus']);

Route::get('/cartitemminus/{id}/{quantity}/{price}',[ProductCartController::class, 'CartItemMinus']);


// Cart Order Route
Route::post('/cartorder',[ProductCartController::class, 'CartOrder']);

Route::get('/orderlistbyuser/{email}',[ProductCartController::class, 'OrderListByUser']);

// Product Cart Route
Route::post('/addtocart',[ProductCartController::class, 'addToCart']);

// Cart Count Route
Route::get('/cartcount/{email}',[ProductCartController::class, 'CartCount']);

// Post Product Review Route
Route::post('/postreview',[ReviewController::class, 'PostReview']);

// Review Product Route
Route::get('/reviewlist/{product_code}',[ReviewController::class, 'ReviewList']);

Route::get('/reviewdelete/{id}',[ReviewController::class, 'DeleteReview'])->name('review.delete');
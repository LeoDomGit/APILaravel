<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\brandController;
use App\Http\Controllers\Api\CategoriesPostController;
use App\Http\Controllers\API\CateGroryController;
use App\Http\Controllers\API\ColorController;
use App\Http\Controllers\Api\PostsController;
use App\Http\Controllers\API\SizeController;
use App\Http\Controllers\API\TagController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\StoragesCotroller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/allUser', [UserController::class,'allUser']);
Route::get('/allUserRole', [UserController::class,'AllRole']);
Route::get('/allBrand',[brandController::class,'allbrand']);
Route::get('/allCate', [CateGroryController::class,'showall']);
Route::get('/allColor', [ColorController::class,'showall']);
Route::get('/allSize', [SizeController::class,'showall']);
Route::get('/allTag', [TagController::class,'showall']);
Route::get('/allStorages', [StoragesCotroller::class,'showall']);
Route::get('/allPosts',[PostsController::class,'allPosts']);

// ===============================================================

Route::post('/register', [UserController::class,'create']);
Route::post('/addUserRole', [UserController::class,'addUserRole']);
Route::post('/deleteRole', [UserController::class,'deleteRole']);
Route::post('checkEmail',[UserController::class,'checkEmail']);
// ==============================================================

Route::post('/addBrand', [brandController::class,'store']);
Route::post('/deleteBrand', [brandController::class,'destroy']);
Route::post('/editBrand', [brandController::class,'edit']);
// ==============================================================
Route::post('/addCate', [CateGroryController::class,'create']);
Route::post('/switchCate', [CateGroryController::class,'switchCate']);
Route::post('/editCate', [CateGroryController::class,'editCate']);
Route::post('/deleteCate', [CateGroryController::class,'deleteCate']);

// ===========================================================
Route::post('/addColor', [ColorController::class,'addColor']);
Route::post('/editColor', [ColorController::class,'editColor']);
Route::post('/deleteColor', [ColorController::class,'deleteColor']);

// ===========================================================

Route::post('/addSize', [SizeController::class,'addSize']);
Route::post('/deleteSize', [SizeController::class,'deleteSize']);
Route::post('/editSize', [SizeController::class,'editSize']);

// ===========================================================
Route::post('/addTag', [TagController::class,'addTag']);
Route::post('/editTag', [TagController::class,'editTag']);
Route::post('/deleteTag', [TagController::class,'deleteTag']);
// ===========================================================
Route::post('/addProduct', [ProductController::class,'create']);
Route::post('/GetBRandByCate',[ProductController::class,'GetBrandByCategrory']);
// ===========================================================
Route::post('/addStorages', [StoragesCotroller::class,'addStorages']);
Route::post('/editStorages', [StoragesCotroller::class,'editStorages']);
Route::post('/deleteStorages', [StoragesCotroller::class,'deleteStorages']);
// ==========================================================================
Route::post('/addProdGallery', [ProductController::class,'addProdGallery']);
Route::get('/allProduct', [ProductController::class,'allProduct']);
Route::post('/productDetail', [ProductController::class,'productDetail']);
Route::post('/updateProductGaller', [ProductController::class,'addProdGallery2']);
Route::post('/updateProduct',[ProductController::class,'updateProd']);
Route::post('/deleteImage',[ProductController::class,'deleteImage']);
Route::post('/switchSP',[ProductController::class,'switchSP']);
Route::post('/editProduct',[ProductController::class,'updateProduct']);
// ==========================================================================
Route::post('/addPosts',[PostsController::class,'store']);
Route::post('/updatePosts',[PostsController::class,'update']);
Route::get('/allCatePosts',[PostsController::class,'allCatePosts']);
Route::post('/deleteSoftPosts',[PostsController::class,'softDelete']);
Route::get('/trashPosts',[PostsController::class,'loadTrash']);
Route::post('/restoreArrTrash',[PostsController::class,'restoreTrashByArr']);
Route::post('/deleteForeceArrTrash',[PostsController::class,'deleteForce']);
Route::post('/deleteSoftSinglePost',[PostsController::class,'softDeleteSinglePost']);
Route::post('/restoreSinglePost',[PostsController::class,'restoreSinglePostTrash']);
Route::post('/deleteForeSinglePost',[PostsController::class,'deleteForeSinglePost']);
// ==========================================================================
Route::get('/allCatepost',[CategoriesPostController::class,'index']);
Route::post('/addCatePost',[CategoriesPostController::class,'store']);
Route::post('/updateCatePost',[CategoriesPostController::class,'update']);
Route::post('/deleteCatePost',[CategoriesPostController::class,'delete']);
// ==========================================================================



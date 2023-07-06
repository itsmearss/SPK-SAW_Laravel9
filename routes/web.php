<?php

use App\Http\Controllers\AhpController;
use App\Http\Controllers\AlternativeController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\HouseController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\DashboardHouseController;
use App\Http\Controllers\DashboardAdminHouseController;
use App\Http\Controllers\DashboardUserController;
use App\Http\Controllers\DashboardContactController;
use App\Http\Controllers\DashboardUserHouseController;
use App\Http\Controllers\SawController;
use App\Models\Alternative;
use App\Models\Category;
use App\Models\Contact;
use App\Models\House;
use Illuminate\Support\Facades\Route;
use App\Models\Post;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Home
Route::get('/', [HouseController::class, 'index']);

//Dijual
Route::get('/jual', [HouseController::class, 'jual']);

//Disewa
Route::get('/sewa', [HouseController::class, 'sewa']);

//Detail House
Route::get('/houses/{house:slug}', [HouseController::class, 'show']);

//About
Route::get('/about', function () {
    return view('about', [
        "title" => "About"
    ]);
});

//Contact
Route::get('/contact', function () {
    return view('contact', [
        "title" => "Contact"
    ]);
});

//DSS
Route::get('/spk', function () {
    return view('spk.spk', [
        "title" => "Decision Support Systems",
        "houses" => House::all(),
        "alternatives" => Alternative::all()
    ]);
});
Route::get('/spk/matriks', [AhpController::class, 'showbobot']);
Route::get('/spk/normalisasi-matriks', [AhpController::class, 'normalisasimatriks']);
Route::get('/spk/konsistensi', [AhpController::class, 'konsistensi']);
Route::get('/spk/normalisasi-alternatives', [AhpController::class, 'normalisasialternative']);
Route::get('/spk/perankingan', [AhpController::class, 'perankingan']);
Route::get('/spk/create-bobot', [AhpController::class, 'createbobot']);

//SAW
Route::get('/spk/saw/kriteria', [SawController::class, 'sawkriteria']);
Route::get('/spk/saw/kriteria/{kriteria}/edit', [SawController::class, 'sawedit']);
Route::post('/spk/saw/kriteria/{kriteria}', [SawController::class, 'sawkriteriaupdate']);
Route::get('/spk/saw/normalisasi', [SawController::class, 'sawnormalisasi']);
Route::get('/spk/saw/hasil', [SawController::class, 'sawhasil']);

//Artikel
Route::get('/artikel', [PostController::class, 'index']);
Route::get('/artikel/{post:slug}', [PostController::class, 'show']);

//Category
Route::get('/categories', function(){
    return view('categories', [
        'title' => "Post Category",
        'categories' => Category::all()
    ]);
});

Route::get('/categories/{category:slug}', function(Category $category){
    return view('artikel', [
        'title' => "Post By Category: $category->name",
        'posts' => $category->posts->load('category', 'author')
    ]);
});

//Author
Route::get('/authors/{author:username}', function(User $author){
    return view('artikel', [
        'title' => "Post By Author: $author->name",
        'posts' => $author->posts->load('category', 'author')
    ]);
});

//Login
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate'])->middleware('guest');

//Logout
Route::post('/logoutadmin', [LoginController::class, 'logoutadmin'])->middleware('auth');
Route::post('/logout', [LoginController::class, 'logout'])->middleware('auth');

//Register
Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store'])->middleware('guest');

//Dashboard Admin
Route::get('/dashboard', function(){
    return view('dashboard.index',[ 
        'houses' => House::all(),
        'posts' => Post::all(),
        'users' => User::all(),
        'contacts' => Contact::all()
    ]);
})->middleware(['auth', 'must-admin']);

//Dashboard User
Route::resource('/user/dashboard/houses', DashboardUserHouseController::class)->middleware(['auth', 'must-user']);

//Check Slug
Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::get('/dashboard/houses/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

//CRUD Admin 
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware(['auth', 'must-admin']);
Route::resource('/dashboard/houses', DashboardHouseController::class)->middleware(['auth', 'must-admin']);


Route::resource('/dashboard/users', DashboardUserController::class)->middleware(['auth', 'must-admin']);
Route::resource('/dashboard/contacts', DashboardContactController::class)->middleware(['auth', 'must-admin']);

//Store Contact
Route::post('/contact/store', [ContactController::class, 'store'])->middleware('auth');

//Send Message
Route::post('/send-message', [HouseController::class, 'sendmessage']);

//Alternative
Route::resource('/spk/alternatives', AlternativeController::class);
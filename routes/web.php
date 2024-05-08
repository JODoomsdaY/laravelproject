<?php
use App\Http\Controllers\Admincontroller;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UniversityController;
use App\Http\Controllers\UserRatingController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ModerationController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['admin']], function () {
    // Vos routes accessibles uniquement par les administrateurs
    Route::get('/admin/dashboard', [Admincontroller::class, 'dashboard'])->name('admindashboard');
    Route::get('/admin/dashboard/universites', [Admincontroller::class, 'create'])->name('universites');
    Route::get('/admin/dashboard/utilisateurs', [Admincontroller::class, 'utilisateurs'])->name('utilisateurs');
    Route::post('/admin/dashboard/universites/universite', [Admincontroller::class, 'store'])->name('Admin.store');
    Route::get('/admin/dashboard/Liste_universites', [Admincontroller::class, 'index'])->name('Liste');
    
});

// web.php
Route::delete('/comments/{comment}', [CommentController::class, 'destroy'])->name('comment.delete');
Route::delete('/comment/{comment}', [CommentController::class, 'destroy'])->name('comment.destroy');
Route::delete('/comments/{comment}', [CommentController::class, 'destroy'])->name('comments.destroy');
Route::delete('/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');

Route::get('/comments/history', [UserController::class, 'showCommentHistory'])->name('comments.history');
Route::get('/comments/history', [CommentController::class, 'history'])->name('comments.history');
Route::get('/comment/{id}/edit', 'CommentController@edit')->name('comment.edit');
Route::delete('/comment/{id}', 'CommentController@destroy')->name('comment.destroy');

Route::get('/ratings/history', [UserRatingController::class, 'index'])->name('ratings.history');
Route::get('/comments/history', [CommentController::class, 'history'])
    ->middleware(['auth'])
    ->name('comments.history');


Route::get('/universities', [UniversityController::class, 'index'])->name('universities.index');
Route::post('/universities/{university}/comment', [UniversityController::class, 'comment'])->name('universities.comment');
// web.php
Route::delete('/universities/{university}', [UniversityController::class, 'destroy'])->name('universities.destroy');
Route::get('/universities/rankings', [UniversityController::class, 'showRankings'])->name('universities.rankings');

Route::get('/universities/comments', [UniversityController::class, 'showComments'])->name('universities.comments');
Route::get('/gerer-notations', 'RatingController@index')->name('notations.index');
Route::get('/rankings', [UniversityController::class, 'showRankings'])->name('universities.rankings');


// web.php
Route::get('/jody', function () {
    return view('jody');
})->name('jody');
// web.php
Route::get('/jody', [UniversityController::class, 'showNotesAndComments'])->name('jody');
// web.php
Route::get('/jody', [UniversityController::class, 'showAverageRatings'])->name('jody');
Route::get('/comment/history', [CommentController::class, 'history'])->name('comment.history');
Route::get('/moderation', 'ModerationController@showComments')->name('moderation.comments');
Route::get('/moderation', [ModerationController::class, 'showComments'])->name('moderation.comments');


Route::get('/notations-utilisateurs', [AdminController::class, 'showUserRatings'])->name('user_ratings');

Route::get('/universities/{id}', [UniversityController::class, 'show'])->name('university.show');
Route::post('/universities/{university}/rate', [UniversityController::class, 'rate'])->name('universities.rate');
Route::get('/dashboard', [UserController::class, '__invoke'])
    ->middleware(['auth', 'verified'])
    ->name('dashboard');
//Route::get('/admin', [HomeController::class, 'admin'])->name('admindashboard');
//Route::get('/user/dashboard', [HomeController::class, 'userDashboard'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

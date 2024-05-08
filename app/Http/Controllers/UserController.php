<?php

namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
use App\Models\University;

class UserController extends Controller
{
    
    public function __invoke()
    {
        // Déplacer la récupération des universités ici
        $universites = University::all(); // Récupérer toutes les universités depuis la base de données
    
        if (auth()->check() && !auth()->user()->hasRole('admin')) {
            // Passez les données des universités à la vue
            return view('dashboard', compact('universites'));
        } else {
            return redirect()->route('admindashboard');
        }
    }
    public function showCommentHistory()
    {
        // Récupérer l'utilisateur connecté
        $user = Auth::user();

        // Récupérer les commentaires de l'utilisateur connecté
        $comments = Comment::where('user_id', $user->id)->get();

        // Passer les commentaires à la vue
        return view('comments.history', ['comments' => $comments]);
    }
    public function destroy(User $user)
    {
        $user->delete();
    
        return redirect()->back()->with('success', 'L\'utilisateur a été supprimé avec succès.');
    }
    
}

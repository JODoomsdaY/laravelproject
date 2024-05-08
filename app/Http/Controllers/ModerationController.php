<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;

class ModerationController extends Controller
{
    public function showComments()
    {
        // Logique pour récupérer les commentaires des utilisateurs
        $comments = Comment::all();

        // Passer les commentaires à la vue
        return view('moderation.comments', ['comments' => $comments]);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller
{
    /**
     * Affiche l'historique des commentaires de l'utilisateur.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Récupérer les commentaires de l'utilisateur actuel
        $userComments = Comment::where('user_id', auth()->id())->get();
        $comments = Comment::orderBy('created_at', 'desc')->get();

        return view('comments.history', compact('userComments'));
    }
    public function history()
{
    // Récupérer l'historique des commentaires de l'utilisateur actuellement authentifié
    $Comments = Comment::where('user_id', auth()->id())
                       ->orderBy('created_at', 'desc')
                       ->get();

    // Retourner la vue avec les commentaires de l'utilisateur
    return view('comments.history', compact('Comments'));
}

public function destroy(Comment $comment)
    {
        // Logique pour supprimer le commentaire
        $comment->delete();

        // Redirection ou réponse appropriée après la suppression
        return back()->with('success', 'Le commentaire a été supprimé avec succès.');
    }
}

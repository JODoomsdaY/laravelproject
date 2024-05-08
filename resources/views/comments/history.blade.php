<!-- resources/views/comments/history.blade.php -->

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Historique des Commentaires') }}
        </h2>
    </x-slot>
    <style>
        /* Style pour la ligne de séparation */
        .separator {
            border: 1px solid #e5e7eb; /* Couleur de la ligne */
            margin: 20px 0; /* Marge autour de la ligne */
        }
    </style>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <h3 class="text-lg font-semibold mb-4">Vos Commentaires :</h3>
                    @if ($Comments->isEmpty())
                        <p>Vous n'avez pas encore effectué de commentaires.</p>
                    @else
                        <ul>
                            @foreach ($Comments as $comment)
                                <li>
                                    <strong>Pour l'Université :</strong> {{ $comment->university->name }}
                                    <p><strong>Commentaire: </strong> {{ $comment->comment }}</p>
                                    <p><strong>Date :</strong> {{ $comment->created_at->format('d/m/Y H:i:s') }}</p>
                                    <!-- Ajout du formulaire de suppression -->
                                    <form action="{{ route('comment.destroy', $comment->id) }}" method="POST" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer ce commentaire ?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="text-red-600 hover:underline">Supprimer</button>
                                </form>
                                    <hr class="separator">
                                </li>
                                
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

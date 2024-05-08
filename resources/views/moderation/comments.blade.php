<!-- moderation.comments.blade.php -->
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Commentaires des Utilisateurs') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Contenu de la page "Commentaires des Utilisateurs" -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <!-- Afficher les commentaires des utilisateurs -->
                    @foreach ($comments as $comment)
                        <div class="mb-6 border-b border-gray-300 pb-4">
                            <h1><strong>Commentaire de {{ $comment->user->name }}</strong></h1>
                            <p>{{ $comment->comment }}</p>
                            <!-- Bouton de suppression du commentaire -->
                            <form action="{{ route('comments.destroy', $comment->id) }}" method="POST" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer ce commentaire ?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="text-red-600 hover:text-red-900">Supprimer</button>
                            </form>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

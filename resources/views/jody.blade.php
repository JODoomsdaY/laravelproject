<!-- jody.blade.php -->
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Notes et Commentaires') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Contenu de la page "Jody" -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <!-- Afficher les notes et commentaires des universités -->
                    @foreach ($universities as $university)
                        <div class="mb-6 border-b border-gray-300 pb-4">
                            <h1><strong>{{ $university->name }}</strong></h1>
                            <p><strong>Note Générale :</strong> {{ number_format($university->average_rating, 2) }}</p>
                            
                            <ul>
                                @foreach ($university->comments as $comment)
                                    <li class="mb-4"><strong>Commentaire de {{ $comment->user->name }} :</strong> {{ $comment->comment }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

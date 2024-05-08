<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Historique des Notations') }}
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
                    <h3 class="text-lg font-semibold mb-4">Vos Notations :</h3>
                    @if ($ratings->isEmpty())
                        <p>Vous n'avez pas encore effectué de notations.</p>
                    @else
                        @foreach ($ratings as $rating)
                            <div>
                                <p>Note pour {{ $rating->university->name }} : {{ $rating->average_score }}</p>
                                <p>Note de la Qualité de l'enseignement : {{ $rating->quality }}</p>
                                <p>Note de la Recherche : {{ $rating->research }}</p>
                                <p>Note de la Vie étudiante : {{ $rating->student_life }}</p>
                                <p>Note du Support aux étudiants : {{ $rating->student_support }}</p>
                                <p>Date de notation : {{ $rating->created_at->format('d/m/Y H:i:s') }}</p>
                            </div>
                            <hr class="separator"> <!-- Ligne de séparation avec la classe CSS -->
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

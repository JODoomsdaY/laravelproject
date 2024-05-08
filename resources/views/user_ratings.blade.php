<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Notations des Utilisateurs') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Contenu de la page "Notations des Utilisateurs" -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <!-- Afficher les notations des utilisateurs -->
                    @foreach ($ratings as $rating)
                        <div class="mb-6 border-b border-gray-300 pb-4">
                            <h1><strong>{{ $rating->user->name }}</strong></h1>
                            <p>Note Générale : {{ number_format($rating->average_score, 2) }}</p>
                            <p>Note de la Qualité de l'enseignement  : {{ number_format($rating->quality, 2) }}</p>
                            <p>Note de la Recherche : {{ number_format($rating->research, 2) }}</p>
                            <p>Note de la Vie étudiante : {{ number_format($rating->student_life, 2) }}</p>
                            <p>Note du Support aux étudiants : {{ number_format($rating->student_support, 2) }}</p>
                            
                            <!-- Afficher d'autres détails de notation si nécessaire -->
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

<script>
    // Fonction pour soumettre automatiquement le formulaire lorsque l'utilisateur sélectionne un critère
    function submitForm() {
        document.getElementById('ranking-form').submit();
    }
</script>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Universités Classées') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <!-- Contenu de la page -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

                    <!-- Formulaire de sélection des critères -->
                    <form id="ranking-form" action="{{ route('universities.rankings') }}" method="GET">
                        @csrf
                        <label for="criteria">Choisissez un critère de classement :</label>
                        <select name="criteria" id="criteria" onchange="submitForm()">
                        <option>Critères</option>
                            <option value="quality">Qualité de l'enseignement</option>
                            <option value="research">Recherche</option>
                            <option value="student_life">Vie étudiante</option>
                            <option value="student_support">Support aux étudiants</option>
                        </select>
                    </form>

                    <!-- Afficher les moyennes des notes de chaque critère pour chaque université -->
                    <h1 class="text-3xl font-bold mt-8 mb-4"><strong>Universités Classées selon la note du critère "{{ ucfirst($criteria) }}"</strong></h1>
                    @php
                        $rank = 1;
                        
                    @endphp
                    @foreach ($averageRatingsByUniversity as $universityName => $averageRatings)
                        <h2><strong>{{ $rank }}. {{ $universityName }}</strong></h2>
                        <ul>
                            <li>Qualité de l'enseignement: {{ number_format($averageRatings['quality'], 2) }}</li>
                            <li>Recherche: {{ number_format($averageRatings['research'], 2) }}</li>
                            <li>Vie étudiante: {{ number_format($averageRatings['student_life'], 2) }}</li>
                            <li>Support aux étudiants: {{ number_format($averageRatings['student_support'], 2) }}</li>
                        </ul>
                        <hr>
                        @php
                            $rank++;
                        @endphp
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</x-app-layout>

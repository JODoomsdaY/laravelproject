<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Détails de l\'université') }}
        </h2>
    </x-slot>

    <div class="py-8 px-4">
        <div class="max-w-3xl mx-auto bg-white rounded-lg shadow-md overflow-hidden">
            <div class="p-6">
                <div class="flex items-center mb-6">
                    <img src="{{ asset('storage/' . $university->logo) }}" alt="{{ $university->name }}" class="h-24 w-24 object-cover rounded-full mr-4 shadow-md">
                    <h1 class="text-3xl font-bold">{{ $university->name }}</h1>
                </div>
                <p class="text-lg text-gray-700 mb-4">{{ $university->description }}</p>
                <p class="text-sm text-gray-600 mb-4">Location: {{ $university->location }}</p>
                <a href="{{ $university->website }}" target="_blank" class="text-blue-600 hover:underline">Plus d'infos sur:{{ $university->website }}</a>
            </div>
            <hr class="border-t">
            <div class="p-6">
                <h2 class="text-xl font-semibold mb-4">Formulaire de notation</h2>
                <form action="{{ route('universities.rate', $university->id) }}" method="POST" class="space-y-4">
                    @csrf
                    <!-- Qualité de l'enseignement -->
                    <div class="flex items-center">
                        <label class="mr-2">Qualité de l'enseignement :</label>
                        @for ($i = 1; $i <= 5; $i++)
                            <input type="radio" id="quality{{ $i }}" name="quality" value="{{ $i }}" required>
                            <label for="quality{{ $i }}" class="mr-2">{{ $i }}</label>
                        @endfor
                    </div>
                    <!-- Recherche -->
                    <div class="flex items-center">
                        <label class="mr-2">Recherche :</label>
                        @for ($i = 1; $i <= 5; $i++)
                            <input type="radio" id="research{{ $i }}" name="research" value="{{ $i }}" required>
                            <label for="research{{ $i }}" class="mr-2">{{ $i }}</label>
                        @endfor
                    </div>
                    <!-- Vie étudiante -->
                    <div class="flex items-center">
                        <label class="mr-2">Vie étudiante :</label>
                        @for ($i = 1; $i <= 5; $i++)
                            <input type="radio" id="student_life{{ $i }}" name="student_life" value="{{ $i }}" required>
                            <label for="student_life{{ $i }}" class="mr-2">{{ $i }}</label>
                        @endfor
                    </div>
                    <!-- Support aux étudiants -->
                    <div class="flex items-center">
                        <label class="mr-2">Support aux étudiants :</label>
                        @for ($i = 1; $i <= 5; $i++)
                            <input type="radio" id="student_support{{ $i }}" name="student_support" value="{{ $i }}" required>
                            <label for="student_support{{ $i }}" class="mr-2">{{ $i }}</label>
                        @endfor
                    </div>
                    <button type="submit" class="text-green-600 hover:underline"><strong>Soumettre</strong></button>
                </form>
            </div>
            <hr class="border-t">
            <div class="p-6">
                <h2 class="text-xl font-semibold mb-4">Laisser un commentaire</h2>
                <form action="{{ route('universities.comment', $university->id) }}" method="POST" class="space-y-4">
                    @csrf
                    <div>
                        <label for="comment" class="block text-sm font-medium text-gray-700">Commentaire :</label>
                        <textarea name="comment" id="comment" rows="5" class="form-textarea mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-green-500 focus:ring focus:ring-green-500 focus:ring-opacity-50" required></textarea>
                    </div>
                    <button type="submit" class="text-green-600 hover:underline"><strong>Envoyer le commentaire</strong></button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>

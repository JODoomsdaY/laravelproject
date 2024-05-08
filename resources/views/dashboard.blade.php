<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Universités') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <!-- Liste des Universités -->
                    <div class="container mx-auto p-4">
                        <h1 class="text-3xl font-bold mb-8"><strong>Liste des Universités</strong></h1>

                        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8">
                            @foreach ($universites as $universite)
                            <div class="bg-white rounded-lg shadow-md">
                                <img src="{{ asset('storage/' . $universite->logo) }}" alt="{{ $universite->name }}" class="h-40 w-40 object-cover rounded-t-lg">
                                <div class="p-6">
                                    <h2 class="text-xl font-bold mb-2">{{ $universite->name }}</h2>
                                    <p class="text-gray-700">{{ $universite->description }}</p>
                                </div>
                                <div class="p-6 bg-gray-100 rounded-b-lg">
                                    <a href="{{ route('university.show', $universite->id) }}" class="text-blue-500 hover:underline">En savoir plus</a>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <!-- Fin de la Liste des Universités -->
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

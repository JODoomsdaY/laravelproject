<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration du site</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@2"></script>
    

   
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-4">
        <form id="logoutForm" method="POST" action="{{ route('logout') }}" class="text-right mb-4">
            @csrf
            <button type="button" onclick="confirmLogout()" class="text-gray-600 hover:text-gray-900 focus:outline-none">
                Log out
            </button>
        </form>
        
        <script>
            function confirmLogout() {
                if (confirm("Êtes-vous sûr de vouloir vous déconnecter ?")) {
                    document.getElementById("logoutForm").submit();
                }
            }
        </script>
        
        <h1 class="text-3xl font-bold mb-8">Interface d'administration</h1>

        <!-- Bouton pour gérer les universités -->
        <div x-data="{ open: false }" class="relative">
            <button @click="open = !open" id="toggleDropdown" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg mb-4 w-full">
                Gérer les universités
            </button>
            <div x-show="open" @click.away="open = false" id="dropdownMenu" class="absolute z-10 top-full left-0 mt-2 w-full bg-white shadow-md rounded-md border border-gray-200">
                <a href="{{ route('universites') }}" class="block p-2 hover:bg-gray-100">Ajouter une université</a>
                <a href="{{ route('Liste') }}" class="block p-2 hover:bg-gray-100">Affichage de la liste des universités</a>
            </div>
        </div>
        
        

        <!-- Bouton pour gérer les critères de notation -->
        <a href="{{ route('user_ratings') }}" class="block w-full mb-4">
    <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg w-full">
        Gérer les critères de notation
    </button>
</a>

        <!-- Bouton pour gérer les utilisateurs -->
        <a href="{{ route('utilisateurs') }}" class="block w-full mb-4">
            <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg w-full">
                Gérer les utilisateurs
            </button>
        </a>

        <!-- Bouton pour modérer les commentaires et les notations -->
        <a href="{{ route('moderation.comments') }}" class="block w-full mb-4">
    <button class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg w-full">
        Modérer les commentaires et les notations
    </button>
</a>
    </div>
</body>
</html>

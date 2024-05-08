<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="max-w-md w-full bg-white p-8 rounded shadow-md">
        @if (Route::has('login'))
            @auth
                <a href="{{ url('/dashboard') }}" class="block w-full text-center bg-indigo-600 text-white py-2 px-4 rounded-md mb-4">Dashboard</a>
            @else
                <a href="{{ route('login') }}" class="block w-full text-center bg-gray-200 text-gray-700 py-2 px-4 rounded-md mb-2">Log in</a>

                @if (Route::has('register'))
                    <a href="{{ route('register') }}" class="block w-full text-center bg-gray-200 text-gray-700 py-2 px-4 rounded-md">Register</a>
                @endif
            @endauth
        @endif
    </div>
</body>
</html>

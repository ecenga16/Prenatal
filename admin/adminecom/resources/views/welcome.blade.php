<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>Prenatal</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css">
</head>
<body class="bg-gray-100 antialiased">
    <div class="flex flex-col items-center justify-center min-h-screen py-4 sm:pt-0">
       
        <div class="flex justify-center mt-4">
            <a href="{{ route('login') }}" class="inline-block px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600 transition-all duration-200 ease-in-out">LOG IN</a>
            <a href="{{ route('register') }}" class="inline-block ml-4 px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600 transition-all duration-200 ease-in-out">REGISTER</a>
        </div>
    </div>
</body>
</html>
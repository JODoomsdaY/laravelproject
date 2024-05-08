<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class Roleseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Vérifie si le rôle "admin" existe déjà
        if (!Role::where('name', 'admin')->exists()) {
            // Crée le rôle "admin" s'il n'existe pas encore
            Role::create(['name' => 'admin', 'guard_name' => 'web']);
        }


    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\RoleSeeder;
use Database\Seeders\UserSeeder;
use Database\Seeders\PermissionSeeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call([
           RoleSeeder::class,
           UserSeeder::class,
           PermissionSeeder::class
        ]);
    }
}

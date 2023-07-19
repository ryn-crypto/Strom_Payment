<?php

namespace Database\Seeders;

use App\Models\Level;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class LevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // menambahkan data untuk level
        Schema::disableForeignKeyConstraints();
        Level::truncate();
        Schema::enableForeignKeyConstraints();

        // siapkan data untuk di insert
        $data = [
            ['level' => 'Admin'],
            ['level' => 'User']
        ];

        foreach ($data as $value) {
            Level::insert(['level' => $value['level']]);
        }
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            // menambahkan beberapa kolom pada tabel user
            $table->string('alamat', 50)->after('email_verified_at');
            $table->integer('meter_id')->after('alamat');
            $table->integer('level_id')->after('meter_id');
            $table->string('img', 25)->after('nama');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            // menghapus perubahan
            if (Schema::hasColumn('users', 'alamat')) {
                $table->dropColumn('alamat');
                $table->dropColumn('meter_id');
                $table->dropColumn('level_id');
                $table->dropColumn('img');
            }
        });
    }
};

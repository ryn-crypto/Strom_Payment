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
        Schema::create('penggunaan', function (Blueprint $table) {
            $table->id();
            $table->string('meter_id', 20)->require();
            $table->date('date')->require();
            $table->integer('meter_awal')->require();
            $table->integer('meter_ahir')->require();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penggunaan');
    }
};

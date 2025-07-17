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
        Schema::table('santris', function (Blueprint $table) {

            $table->year('entry_year')->nullable()->change(); // Atau $table->integer('entry_year')->nullable()->change();
            $table->year('year_out')->nullable()->change();  // Atau $table->integer('exit_year')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('santris', function (Blueprint $table) {
            //
        });
    }
};

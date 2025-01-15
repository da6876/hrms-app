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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('uid')->unique();
            $table->string('name');
            $table->string('user_name')->unique();
            $table->string('email')->unique();
            $table->string('phone')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('longitude');
            $table->string('latitude');
            $table->string('ip');
            $table->string('mac')->nullable();
            $table->string('last_login');
            $table->string('create_by');
            $table->string('create_date')->timestamps();
            $table->string('update_date')->nullable();
            $table->string('update_by')->nullable();
            $table->string('token')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};

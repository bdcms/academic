<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblProfiles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_profiles', function (Blueprint $table) {
            $table->increments('teacher_id');
            $table->string('fullname');
            $table->string('image');
            $table->string('birth_date');
            $table->string('password');
            $table->string('email');
            $table->string('address');
            $table->string('dept_name');
            $table->string('position');
            $table->integer('contact');
            $table->string('last_institute');
            $table->string('note'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_profiles');
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblSections extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_sections', function (Blueprint $table) {
            $table->increments('id');
            $table->string('home_note');
            $table->string('home_cover');
            $table->string('public_cover');
            $table->string('research_cover');
            $table->string('project_cover');
            $table->string('train_cover');
            $table->string('gallary_cover');
            $table->string('contact_cover');
            $table->integer('teacher_id');
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
        Schema::dropIfExists('tbl_sections');
    }
}

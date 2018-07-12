<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblPublications extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_publications', function (Blueprint $table) {
            $table->increments('id');
            $table->string('pub_name');
            $table->string('pub_cover');
            $table->string('pub_date');
            $table->integer('teacher_id');
            $table->string('pub_way');
            $table->string('short_desc');
            $table->longtext('long_desc'); 
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
        Schema::dropIfExists('tbl_publications');
    }
}

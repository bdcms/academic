<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblTrainings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_trainings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('org_name');
            $table->string('duration');
            $table->string('tropic');
            $table->longtext('desc');
            $table->string('strt_date');
            $table->string('end_date'); 
            $table->integer('teacher-id'); 
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
        Schema::dropIfExists('tbl_trainings');
    }
}

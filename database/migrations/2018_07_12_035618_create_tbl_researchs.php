<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblResearchs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_researchs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('re_title');
            $table->longText('re_desc');
            $table->string('re_strt_date');
            $table->string('re_end_date');
            $table->string('re_team');
            $table->string('org_name');
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
        Schema::dropIfExists('tbl_researchs');
    }
}

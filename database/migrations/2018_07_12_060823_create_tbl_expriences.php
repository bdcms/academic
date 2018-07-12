<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblExpriences extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_expriences', function (Blueprint $table) {
            $table->increments('id');
            $table->string('company_name');
            $table->string('post_name');
            $table->string('strt_date');
            $table->string('end_date');
            $table->integer('teacher_id');
            $table->longText('desc'); 
            $table->string('department'); 
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
        Schema::dropIfExists('tbl_expriences');
    }
}

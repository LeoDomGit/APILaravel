<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prodTage', function (Blueprint $table) {
            $table->integer('id',true,false);
            $table->integer('idProd',false,false);
            $table->integer('idTag',false,false);
            $table->foreign('idProd')->references('id')->on('products');
            $table->foreign('idTag')->references('idtag')->on('tbl_tag');
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
        Schema::dropIfExists('prodTage');
    }
};

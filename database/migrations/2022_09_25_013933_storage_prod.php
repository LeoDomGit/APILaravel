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
        Schema::create('storageProd', function (Blueprint $table) {
            $table->integer('idProd',false,false);
            $table->integer('idSize',false,false);
            $table->integer('idColor',false,false);
            $table->integer('idStorage',false,false);
            $table->integer('quantity',false,false);
            $table->foreign('idProd')->references('id')->on('products');
            $table->foreign('idSize')->references('idSize')->on('tbl_size');
            $table->foreign('idColor')->references('id')->on('colors');
            $table->foreign('idStorage')->references('id')->on('storages');
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
        Schema::dropIfExists('storageProd');
    }
};

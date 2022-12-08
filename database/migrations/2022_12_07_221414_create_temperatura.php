<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemperatura extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temperatura', function (Blueprint $table) {
            //PK
            $table->increments('id');
            //ATRIBUTOS
            $table->timestamps();
            $table->String('Rango_Temperatura')->nullable();
            $table->String('Significado_Temperatura')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('temperatura');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHumedad extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('humedad', function (Blueprint $table) {
            //PK
            $table->increments('id');
            //ATRIBUTOS
            $table->timestamps();
            $table->String('Rango_Humedad')->nullable();
            $table->String('Significado_Humedad')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('humedad');
    }
}

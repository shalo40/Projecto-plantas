<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlantas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plantas', function (Blueprint $table) {
            //PK
            $table->increments('id');
            //ATRIBUTOS
            $table->timestamps();
            $table->String('N_Serie_Planta')->nullable();
            $table->String('Nombre_Planta')->nullable();
            $table->String('Nombre_Cientifico_Planta')->nullable();
            $table->String('Humedad_Planta')->nullable();
            $table->String('Estado_Humedad_Planta')->nullable();
            $table->String('Temperatura_Planta')->nullable();
            $table->String('Estado_Temperatura_Planta')->nullable();
            //FK
            $table->Integer('id_Tipo_Planta')->nullable();



           
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plantas');
    }
}

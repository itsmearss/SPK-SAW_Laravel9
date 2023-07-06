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
        Schema::create('houses', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->boolean('status');
            $table->string('nama_rumah');
            $table->string('slug')->unique();
            $table->string('alamat');
            $table->string('kota');
            $table->string('provinsi');
            $table->string('kode_pos');
            $table->integer('harga');
            $table->text('deskripsi');
            $table->integer('luas_bangunan');
            $table->integer('luas_tanah');
            $table->integer('kamar_tidur');
            $table->integer('kamar_mandi');
            $table->integer('lantai');
            $table->string('sertifikat');
            $table->integer('daya_listrik');
            $table->string('interior');
            $table->string('tahun_dibangun');
            $table->boolean('kondisi_bangunan')->default(true);
            $table->string('main_image')->nullable();
            $table->string('image1')->nullable();
            $table->string('image2')->nullable();
            $table->string('image3')->nullable();
            $table->string('image4')->nullable();
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
        Schema::dropIfExists('houses');
    }
};

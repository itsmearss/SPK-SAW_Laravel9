<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\House>
 */
class HouseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nama_rumah' => $this->faker->sentence(mt_rand(2,8)),
            'status' => $this->faker->boolean(),
            'user_id' => mt_rand(1,3),
            'slug' => $this->faker->slug(),
            'alamat' => $this->faker->streetAddress(),
            'kota' => $this->faker->city(),
            'provinsi' => $this->faker->state(),
            'kode_pos' => $this->faker->postcode(),
            'harga' => mt_rand(0, 100),
            'deskripsi' => $this->faker->paragraph(),
            'luas_bangunan' => mt_rand(20, 500),
            'luas_tanah' => mt_rand(20,800),
            'kamar_tidur' => mt_rand(2,15),
            'kamar_mandi' => mt_rand(2,10),
            'lantai' => mt_rand(1,5),
            'sertifikat' => $this->faker->sentence(mt_rand(1,2)),
            'daya_listrik' => mt_rand(1000,5000),
            'interior' => $this->faker->sentence(mt_rand(1,2)),
            'tahun_dibangun'=> $this->faker->year()
        ];
    }
}

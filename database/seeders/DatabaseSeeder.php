<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\House;
use App\Models\Post;
use App\Models\User;
use App\Models\Admin;
use App\Models\Role;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        Role::create([
            'role' => 'admin'
        ]);

        Role::create([
            'role' => 'user'
        ]);

        User::factory(4)->create();
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Annur Riyadhus Solikhin',
            'role_id' => '1',
            'username' => 'annurrs',
            'jk' => true,
            'tanggal_lahir' => '2002-12-27',
            'alamat' => 'selapura city',
            'no_hp' => '085642240515',
            'email' => 'annurriyadhus17@gmail.com',
            'password' => bcrypt('password'),
        ]);

        Category::create([
            'name' => 'Property',
            'slug' => 'property'
        ]);

        Category::create([
            'name' => 'House',
            'slug' => 'house'
        ]);

        Category::create([
            'name' => 'Apartment',
            'slug' => 'apartment'
        ]);

        Category::create([
            'name' => 'Hotel',
            'slug' => 'hotel'
        ]);

        Category::create([
            'name' => 'Furniture',
            'slug' => 'furniture'
        ]);

        Category::create([
            'name' => 'Interior',
            'slug' => 'interior'
        ]);

        Post::factory(20)->create();

        House::factory(100)->create();
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, est.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere beatae numquam temporibus ex quae quibusdam reiciendis. Perferendis sed tempora molestias cupiditate eum, nulla, porro mollitia id voluptates inventore unde sapiente libero numquam veritatis vel exercitationem incidunt. </p> <p> Quis quaerat, quia laboriosam maxime magni aspernatur ipsam harum sed possimus facere! Laudantium excepturi distinctio quas ab cum possimus similique quam culpa quod ducimus sunt doloremque obcaecati, eos ipsa deserunt veritatis modi soluta! In quo expedita, voluptas, cum quam repellendus ea quis ratione, accusamus totam placeat quas veniam dolores praesentium explicabo voluptatibus temporibus voluptates facere molestiae aut. Dignissimos, dolor! Dolore eligendi voluptas quam exercitationem? </p>'
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-ke-dua',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, est.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere beatae numquam temporibus ex quae quibusdam reiciendis. Perferendis sed tempora molestias cupiditate eum, nulla, porro mollitia id voluptates inventore unde sapiente libero numquam veritatis vel exercitationem incidunt. </p> <p> Quis quaerat, quia laboriosam maxime magni aspernatur ipsam harum sed possimus facere! Laudantium excepturi distinctio quas ab cum possimus similique quam culpa quod ducimus sunt doloremque obcaecati, eos ipsa deserunt veritatis modi soluta! In quo expedita, voluptas, cum quam repellendus ea quis ratione, accusamus totam placeat quas veniam dolores praesentium explicabo voluptatibus temporibus voluptates facere molestiae aut. Dignissimos, dolor! Dolore eligendi voluptas quam exercitationem? </p>'
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ke-tiga',
        //     'category_id' => 2,
        //     'user_id' => 1,
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, est.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere beatae numquam temporibus ex quae quibusdam reiciendis. Perferendis sed tempora molestias cupiditate eum, nulla, porro mollitia id voluptates inventore unde sapiente libero numquam veritatis vel exercitationem incidunt. </p> <p> Quis quaerat, quia laboriosam maxime magni aspernatur ipsam harum sed possimus facere! Laudantium excepturi distinctio quas ab cum possimus similique quam culpa quod ducimus sunt doloremque obcaecati, eos ipsa deserunt veritatis modi soluta! In quo expedita, voluptas, cum quam repellendus ea quis ratione, accusamus totam placeat quas veniam dolores praesentium explicabo voluptatibus temporibus voluptates facere molestiae aut. Dignissimos, dolor! Dolore eligendi voluptas quam exercitationem? </p>'
        // ]);
    }
}

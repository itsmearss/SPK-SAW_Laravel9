<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Annur Riyadhus Solikhin",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate tenetur in eaque sapiente ipsa ea, odit deserunt accusamus commodi error adipisci! Voluptates officiis odit iure adipisci aliquam nulla non dolorem, saepe excepturi amet nobis dolore animi voluptatum facilis debitis voluptas, molestiae illo! Ad, dolor eligendi quod laborum veniam odio dolore atque id debitis. Optio sunt temporibus eius dolor, fugit perspiciatis corporis dignissimos voluptas, hic cumque illum, animi autem non necessitatibus? Sapiente ipsum distinctio quas magni rem suscipit deleniti similique aliquam ducimus quisquam dolorum modi voluptates veniam architecto dicta in facere nemo, iste dolore ipsa natus! Ullam quaerat voluptatum dolorum quasi."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Ade Nur Khafi Riski",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate tenetur in eaque sapiente ipsa ea, odit deserunt accusamus commodi error adipisci! Voluptates officiis odit iure adipisci aliquam nulla non dolorem, saepe excepturi amet nobis dolore animi voluptatum facilis debitis voluptas, molestiae illo! Ad, dolor eligendi quod laborum veniam odio dolore atque id debitis. Optio sunt temporibus eius dolor, fugit perspiciatis corporis dignissimos voluptas, hic cumque illum, animi autem non necessitatibus? Sapiente ipsum distinctio quas magni rem suscipit deleniti similique aliquam ducimus quisquam dolorum modi voluptates veniam architecto dicta in facere nemo, iste dolore ipsa natus! Ullam quaerat voluptatum dolorum quasi."
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}

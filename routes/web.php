<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Putri Aulia Maulidina",
        "email" => "putri.213040055@unpas.ac.id",
        "image" => "putri.jpeg"
    ]);
});


Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug"=> "judul-post-pertama",
            "author" => "Putri Aulia Maulidina",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum consequatur delectus quaerat sit impedit laboriosam asperiores ullam, sed repudiandae distinctio recusandae ipsa quis ratione possimus accusantium provident quia dignissimos? Sed fugiat porro provident necessitatibus asperiores hic, tempore doloremque quaerat dolorum atque inventore! Asperiores quidem cum, obcaecati excepturi a beatae iure tenetur placeat exercitationem aspernatur id ex! Doloremque hic provident officia numquam magnam laborum libero quidem aliquid eos at nulla architecto sequi dignissimos labore autem facilis rem, fugiat pariatur alias! Illum!"
        ],
    
        [
            "title" => "Judul Post Kedua",
            "slug"=> "judul-post-kedua",
            "author" => "Maxine Mayfield",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, corporis aliquid ipsam ullam accusamus, cum tempora vero fugiat laudantium tenetur hic doloremque repellat deserunt obcaecati non, delectus nam? Cum amet non ea maxime fuga tempora sed repellendus asperiores iure eos maiores ducimus, laudantium aliquam est neque blanditiis laborum esse impedit reiciendis vero! Maiores vitae nisi consequatur numquam placeat neque est nam necessitatibus odio obcaecati ad optio, veniam nostrum inventore tempore porro dolorum quod, velit accusantium eaque! Vero exercitationem quae explicabo delectus sequi sed mollitia sapiente maxime laudantium, officia officiis necessitatibus error rem ad et! Voluptatem nulla rem quod a velit?"
        ]
    ];

    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

// halaman single post
Route::get('posts/{slug}', function($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug"=> "judul-post-pertama",
            "author" => "Putri Aulia Maulidina",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum consequatur delectus quaerat sit impedit laboriosam asperiores ullam, sed repudiandae distinctio recusandae ipsa quis ratione possimus accusantium provident quia dignissimos? Sed fugiat porro provident necessitatibus asperiores hic, tempore doloremque quaerat dolorum atque inventore! Asperiores quidem cum, obcaecati excepturi a beatae iure tenetur placeat exercitationem aspernatur id ex! Doloremque hic provident officia numquam magnam laborum libero quidem aliquid eos at nulla architecto sequi dignissimos labore autem facilis rem, fugiat pariatur alias! Illum!"
        ],
    
        [
            "title" => "Judul Post Kedua",
            "slug"=> "judul-post-kedua",
            "author" => "Maxine Mayfield",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, corporis aliquid ipsam ullam accusamus, cum tempora vero fugiat laudantium tenetur hic doloremque repellat deserunt obcaecati non, delectus nam? Cum amet non ea maxime fuga tempora sed repellendus asperiores iure eos maiores ducimus, laudantium aliquam est neque blanditiis laborum esse impedit reiciendis vero! Maiores vitae nisi consequatur numquam placeat neque est nam necessitatibus odio obcaecati ad optio, veniam nostrum inventore tempore porro dolorum quod, velit accusantium eaque! Vero exercitationem quae explicabo delectus sequi sed mollitia sapiente maxime laudantium, officia officiis necessitatibus error rem ad et! Voluptatem nulla rem quod a velit?"
        ]
    ];

    $new_post = [];
    foreach($blog_posts as $post) {
        if($post["slug"] === $slug) {
            $new_post = $post;
        }
    }

    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});

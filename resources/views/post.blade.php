@extends('layouts.main')

@section('container')
    <div class="container py-4">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <h2>{{ $post->title }}</h2>
                    <p>By: <a href="/artikel?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->nama }}</a> in <a href="/artikel?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
                    @if ($post->image)
                        <div style="max-height: 350px; overflow:hidden">
                             <img src="{{ asset('storage/'.$post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                        </div>
                    @else
                        <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid">
                    @endif
                    <article class="my-3">
                        {!! $post->body !!}
                    </article>
                <a href="/artikel" class="text-decoration-none">Back to artikel</a>   
            </div>
        </div>
    </div>
@endsection
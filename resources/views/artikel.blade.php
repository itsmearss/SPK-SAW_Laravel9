@extends('layouts.main')

@section('container')
    <div class="container-fluid py-3">
        <h2 class="text-center fw-bolder mb-3">{{ $title }}</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="/artikel" method="GET">
                    @if (request('category'))
                        <input type="hidden" name="category" value="{{ request('category') }}">
                    @endif
                    @if (request('author'))
                        <input type="hidden" name="author" value="{{ request('author') }}">
                    @endif
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                        <button class="btn btn-outline-dark" type="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>

    @if ($posts->count())
        <div class="card mb-3 text-center">
            @if ($posts[0]->image)
                <div style="max-height: 350px; overflow:hidden">
                     <img src="{{ asset('storage/'.$posts[0]->image) }}" alt="{{ $posts[0]->category->name }}" class="img-fluid">
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name }}">
            @endif
            <div class="card-body">
            <h3 class="card-title"><a href="/artikel/{{ $posts[0]->slug }}" class="text-decoration-none text-dark fw-semibold">{{ $posts[0]->title }}</a></h3>
            <p>
                <small class="text-muted">
                    By: <a href="/artikel?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/artikel?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
                </small>
            </p>
            <p class="card-text">{{ $posts[0]->excerpt }}</p>
            <a href="/artikel/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-dark">Read more...</a>
            </div>
        </div>

        <div class="container">
            <div class="row">
                @foreach($posts->skip(1) as $post)
                <div class="col-md-4">
                    <div class="card mb-3">
                        <p class="position-absolute px-3 py-2" style="background-color: rgba(0, 0, 0, 0.7)"><a href="/artikel?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a></p>
                        @if ($post->image)
                            <img src="{{ asset('storage/'.$post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                        @else
                            <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                        @endif
                        <div class="card-body">
                        <h5 class="card-title"><a href="/artikel/{{ $post->slug }}" class="text-decoration-none text-dark fw-semibold">{{ $post->title }}</a></h5>
                        <p>
                            <small class="text-muted">
                                By: <a href="/artikel?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}
                            </small>
                        </p>
                        <p class="card-text">{{ $post->excerpt }}</p>
                        <a href="/artikel/{{ $post->slug }}" class="text-decoration-none btn btn-dark">Read more</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="">
                {{ $posts->links() }}
            </div>
        </div>
    @else
        <p>Post Not Found.</p>
    @endif
    </div>
@endsection
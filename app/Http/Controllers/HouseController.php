<?php

namespace App\Http\Controllers;

use App\Models\House;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HouseController extends Controller
{
    public function index(){
        $users = DB::table('users')
                ->where('role_id', '=', 2)
                ->get();

            return view('home', [
                "title" => "Home",
                "count_house" => House::all(),
                "count_article" => Post::all(),
                "count_user" => $users,
                "houses" => House::paginate(8),
                "posts" => Post::latest()->paginate(8)
            ]);
    }

    public function jual(){
        $houses = House::where('status', '1')->paginate(20);
        return view('houses', [
            "title" => "Dijual",
            "houses" => $houses
        ]);
    }

    public function sewa(){
        return view('houses', [
            "title" => "Disewa",
            "houses" => House::where('status', '0')->paginate(20)
        ]);
    }

    public function show(House $house){
        return view('house', [
            "title" => "House Detail",
            "house" => $house
        ]);
    }

    public function sendmessage(Request $request){
        $data = $request->validate([
            'message' => 'required'
        ]);

        $message = $data['message'];
        
        return redirect("https://wa.me/6285642240515?text=$message");
    }
}

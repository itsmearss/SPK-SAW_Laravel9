<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        return view('register', [
            "title" => "Register",
        ]);
    }

    public function store(Request $request){
        // return $request;
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|unique:users|min:3|max:255',
            'email' => 'required|email|unique:users',
            'alamat' => 'required',
            'jk' => 'required',
            'no_hp' => 'required',
            'tanggal_lahir' => 'required',
            'password' => 'required|min:6|max:255'
        ]);

        $validatedData['role_id'] = 2;

        $validatedData['password'] = Hash::make($validatedData['password']);
        User::create($validatedData);

        return redirect('/loginadmin')->with('success', 'Registration Successfully! Please Login');
    }
}

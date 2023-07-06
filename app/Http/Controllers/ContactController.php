<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'full_name' => 'required|max:255',
            'email' => 'required',
            'subject' => 'required|max:255',
            'message' => 'required'
        ]);

        Contact::create($validatedData);

        return redirect('/contact')->with('success', 'Message sended successfully');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Alternative;
use Illuminate\Http\Request;

class AlternativeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return redirect('/spk');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $house = $request->house;
        $data = json_decode($house, true);

        $validatedData['id_rumah'] = $data['id'];
        $validatedData['nama_rumah'] = $data['nama_rumah'];
        $validatedData['harga'] = $data['harga'];
        $validatedData['luas_bangunan'] = $data['luas_bangunan'];
        $validatedData['luas_tanah'] = $data['luas_tanah'];
        $validatedData['kamar_tidur'] = $data['kamar_tidur'];
        $validatedData['kamar_mandi'] = $data['kamar_mandi'];
        $validatedData['daya_listrik'] = $data['daya_listrik'];
        $validatedData['slug'] = $data['slug'];
        // $validatedData['tahun_dibangun'] = intval($data['tahun_dibangun']);
        
        Alternative::create($validatedData);
        return redirect('/spk')->with('success', 'New Alternative has ben added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function show(Alternative $alternative)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function edit(Alternative $alternative)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alternative $alternative)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function destroy(Alternative $alternative)
    {
        Alternative::destroy($alternative->id);

    return redirect('/spk')->with('success', 'Alternative has been deleted');
    }
}

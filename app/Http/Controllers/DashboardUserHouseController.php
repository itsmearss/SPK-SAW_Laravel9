<?php

namespace App\Http\Controllers;

use App\Models\House;
use App\Models\User;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\DB;

class DashboardUserHouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboarduser.houses.index', [
            'houses' => House::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboarduser.houses.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama_rumah' => 'required|max:255',
            'slug' => 'required|unique:houses',
            'status' => 'required',
            'alamat' => 'required|max:255',
            'kota' => 'required',
            'provinsi' => 'required',
            'kode_pos' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'luas_bangunan' => 'required',
            'luas_tanah' => 'required',
            'kamar_tidur' => 'required',
            'kamar_mandi' => 'required',
            'lantai' => 'required',
            'sertifikat' => 'required',
            'daya_listrik' => 'required',
            'interior' => 'required',
            'tahun_dibangun' => 'required',
            'kondisi_bangunan' => 'required',
        ]);

        $validatedData['user_id'] =  auth()->user()->id;
        House::create($validatedData);

        return redirect('/user/dashboard/houses')->with('success', 'New Listing has ben added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\House  $house
     * @return \Illuminate\Http\Response
     */
    public function show(House $house)
    {
        return view('dashboarduser.houses.show', [
            'house' => $house
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\House  $house
     * @return \Illuminate\Http\Response
     */
    public function edit(House $house)
    {
        return view('dashboarduser.houses.edit', [
            'house' => $house
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\House  $house
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, House $house)
    {
        $rules = [
            'nama_rumah' => 'required|max:255',
            'status' => 'required',
            'alamat' => 'required|max:255',
            'kota' => 'required',
            'provinsi' => 'required',
            'kode_pos' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'luas_bangunan' => 'required',
            'luas_tanah' => 'required',
            'kamar_tidur' => 'required',
            'kamar_mandi' => 'required',
            'lantai' => 'required',
            'sertifikat' => 'required',
            'daya_listrik' => 'required',
            'interior' => 'required',
            'tahun_dibangun' => 'required',
            'kondisi_bangunan' => 'required',
        ];

        if ($request->slug != $house->slug) {
            $rules['slug'] = 'required|unique:houses';
        }

        $validatedData = $request->validate($rules);

        $validatedData['user_id'] =  auth()->user()->id;

        House::where('id', $house->id)
                ->update($validatedData);

        return redirect('/user/dashboard/houses')->with('success', 'Listing has ben update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\House  $house
     * @return \Illuminate\Http\Response
     */
    public function destroy(House $house)
    {
        House::destroy($house->id);

        return redirect('/user/dashboard/houses')->with('success', 'Listing has been deleted');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(House::class, 'slug', $request->nama_rumah);
        return response()->json(['slug' => $slug]);
    }
}

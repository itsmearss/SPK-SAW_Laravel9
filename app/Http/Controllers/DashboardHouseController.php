<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\House;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class DashboardHouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.houses.index', [
            'houses' => House::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = DB::table('users')->where('role_id', 2)->get();
        return view('dashboard.houses.create', [
            "users" => $users
        ]);
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
            'user_id' => 'required',
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

        if ($request->file('main_image')) {
            $validatedData['main_image'] = $request->file('main_image')->store('house-images');
        }

        if ($request->file('image1')) {
            $validatedData['image1'] = $request->file('image1')->store('house-images');
        }

        if ($request->file('image2')) {
            $validatedData['image2'] = $request->file('image2')->store('house-images');
        }

        if ($request->file('image3')) {
            $validatedData['image3'] = $request->file('image3')->store('house-images');
        }

        if ($request->file('image4')) {
            $validatedData['image4'] = $request->file('image4')->store('house-images');
        }
        

        House::create($validatedData);

        return redirect('/dashboard/houses')->with('success', 'New Listing has ben added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(House $house)
    {
        return view('dashboard.houses.show', [
            'house' => $house
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(House $house)
    {
        return view('dashboard.houses.edit', [
            'house' => $house,
            'users' => User::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, House $house)
    {
        $rules = [
            'nama_rumah' => 'required|max:255',
            'user_id' => 'required',
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

        if ($request->file('main_image')) {
            if ($request->oldmain_image) {
                Storage::delete($request->oldmain_image);
            }
            $validatedData['main_image'] = $request->file('main_image')->store('house-images');
        }

        if ($request->file('image1')) {
            if ($request->oldImage1) {
                Storage::delete($request->oldImage1);
            }
            $validatedData['image1'] = $request->file('image1')->store('house-images');
        }

        if ($request->file('image2')) {
            if ($request->oldImage2) {
                Storage::delete($request->oldImage2);
            }
            $validatedData['image2'] = $request->file('image2')->store('house-images');
        }

        if ($request->file('image3')) {
            if ($request->oldImage3) {
                Storage::delete($request->oldImage3);
            }
            $validatedData['image3'] = $request->file('image3')->store('house-images');
        }

        if ($request->file('image4')) {
            if ($request->oldImage4) {
                Storage::delete($request->oldImage4);
            }
            $validatedData['image4'] = $request->file('image4')->store('house-images');
        }
        
        House::where('id', $house->id)
                ->update($validatedData);

        return redirect('/dashboard/houses')->with('success', 'Listing has ben update');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(House $house)
    {
        House::destroy($house->id);

        return redirect('/dashboard/houses')->with('success', 'Listing has been deleted');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(House::class, 'slug', $request->nama_rumah);
        return response()->json(['slug' => $slug]);
    }
}

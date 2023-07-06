<?php

namespace App\Http\Controllers;

use App\Models\SawHasil;
use App\Models\SawKriteria;
use Illuminate\Http\Request;
use App\Models\SawNormalisasi;
use Illuminate\Support\Facades\DB;

class SawController extends Controller
{
    public function sawnormalisasi(){
        return view('spk.spk-saw-normalisasi', [
            'title' => 'Normalisasi Alternatives',
            'alternatives' => SawNormalisasi::all()
        ]);
    }

    public function sawhasil(){
        return view('spk.spk-saw-hasil', [
            'title' => 'Hasil',
            'ranks' => SawHasil::all()
        ]);
    }

    public function sawkriteria(){
        $bobot = DB::table('kriteria')->sum('bobot');
        return view('spk.spk-saw-kriteria', [
            'title' => 'Kriteria',
            'kriterias' => SawKriteria::all(),
            'bobot' => $bobot
        ]);
    } 

    public function sawedit(SawKriteria $kriteria){
        
        return view('spk.spk-saw-editkriteria', [
            'kriteria' => $kriteria,
            'title' => 'Edit Kriteria'
        ]);
    }

    public function sawkriteriaupdate(Request $request, SawKriteria $kriteria){
        // return $request;
        $validatedData = $request->validate([
            'bobot' => 'required|numeric',
        ]);

        SawKriteria::where('id', $kriteria->id)
                ->update($validatedData);

        return redirect('/spk/saw/kriteria')->with('success', 'Kriteria has ben update');
    }
}

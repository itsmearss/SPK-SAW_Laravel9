<?php

namespace App\Http\Controllers;

use App\Models\Konsistensi;
use App\Models\Matrik;
use App\Models\NormalisasiAlternative;
use App\Models\NormalisasiMatriks;
use App\Models\Perankingan;
use Illuminate\Http\Request;

class AhpController extends Controller
{
    public function createbobot(){
        $matriks = Matrik::all();
        //baris 1
        $hh = $matriks['0']['harga'];
        $hb = $matriks['0']['luas_bangunan'];
        $ht = $matriks['0']['luas_tanah'];
        $hk = $matriks['0']['kamar_tidur'];
        $hm = $matriks['0']['kamar_mandi'];
        $hd = $matriks['0']['daya_listrik'];

        //baris 2
        $bh = $matriks['1']['harga'];
        $bb = $matriks['1']['luas_bangunan'];
        $bt = $matriks['1']['luas_tanah'];
        $bk = $matriks['1']['kamar_tidur'];
        $bm = $matriks['1']['kamar_mandi'];
        $bd = $matriks['1']['daya_listrik'];

        //baris 3
        $th = $matriks['2']['harga'];
        $tb = $matriks['2']['luas_bangunan'];
        $tt = $matriks['2']['luas_tanah'];
        $tk = $matriks['2']['kamar_tidur'];
        $tm = $matriks['2']['kamar_mandi'];
        $td = $matriks['2']['daya_listrik'];

        //baris 4
        $kh = $matriks['3']['harga'];
        $kb = $matriks['3']['luas_bangunan'];
        $kt = $matriks['3']['luas_tanah'];
        $kk = $matriks['3']['kamar_tidur'];
        $km = $matriks['3']['kamar_mandi'];
        $kd = $matriks['3']['daya_listrik'];

        //baris 5
        $mh = $matriks['4']['harga'];
        $mb = $matriks['4']['luas_bangunan'];
        $mt = $matriks['4']['luas_tanah'];
        $mk = $matriks['4']['kamar_tidur'];
        $mm = $matriks['4']['kamar_mandi'];
        $md = $matriks['4']['daya_listrik'];

        //baris 6
        $dh = $matriks['5']['harga'];
        $db = $matriks['5']['luas_bangunan'];
        $dt = $matriks['5']['luas_tanah'];
        $dk = $matriks['5']['kamar_tidur'];
        $dm = $matriks['5']['kamar_mandi'];
        $dd = $matriks['5']['daya_listrik'];

        return view('spk.spk-create-bobot', [
            'title' => 'Matriks Bobot',
            // baris 1
            'hh' => $hh,
            'hb' => $hb,
            'ht' => $ht,
            'hk' => $hk,
            'hm' => $hm,
            'hd' => $hd,

            // baris 2
            'bh' => $bh,
            'bb' => $bb,
            'bt' => $bt,
            'bk' => $bk,
            'bm' => $bm,
            'bd' => $bd,

            // baris 3
            'th' => $th,
            'tb' => $tb,
            'tt' => $tt,
            'tk' => $tk,
            'tm' => $tm,
            'td' => $td,

            // baris 4
            'kh' => $kh,
            'kb' => $kb,
            'kt' => $kt,
            'kk' => $kk,
            'km' => $km,
            'kd' => $kd,

            // baris 5
            'mh' => $mh,
            'mb' => $mb,
            'mt' => $mt,
            'mk' => $mk,
            'mm' => $mm,
            'md' => $md,

            // baris 6
            'dh' => $dh,
            'db' => $db,
            'dt' => $dt,
            'dk' => $dk,
            'dm' => $dm,
            'dd' => $dd,
        ]);
    }

    public function showbobot(){
        $matriks = Matrik::all();
        //baris 1
        $hh = $matriks['0']['harga'];
        $hb = $matriks['0']['luas_bangunan'];
        $ht = $matriks['0']['luas_tanah'];
        $hk = $matriks['0']['kamar_tidur'];
        $hm = $matriks['0']['kamar_mandi'];
        $hd = $matriks['0']['daya_listrik'];

        //baris 2
        $bh = $matriks['1']['harga'];
        $bb = $matriks['1']['luas_bangunan'];
        $bt = $matriks['1']['luas_tanah'];
        $bk = $matriks['1']['kamar_tidur'];
        $bm = $matriks['1']['kamar_mandi'];
        $bd = $matriks['1']['daya_listrik'];

        //baris 3
        $th = $matriks['2']['harga'];
        $tb = $matriks['2']['luas_bangunan'];
        $tt = $matriks['2']['luas_tanah'];
        $tk = $matriks['2']['kamar_tidur'];
        $tm = $matriks['2']['kamar_mandi'];
        $td = $matriks['2']['daya_listrik'];

        //baris 4
        $kh = $matriks['3']['harga'];
        $kb = $matriks['3']['luas_bangunan'];
        $kt = $matriks['3']['luas_tanah'];
        $kk = $matriks['3']['kamar_tidur'];
        $km = $matriks['3']['kamar_mandi'];
        $kd = $matriks['3']['daya_listrik'];

        //baris 5
        $mh = $matriks['4']['harga'];
        $mb = $matriks['4']['luas_bangunan'];
        $mt = $matriks['4']['luas_tanah'];
        $mk = $matriks['4']['kamar_tidur'];
        $mm = $matriks['4']['kamar_mandi'];
        $md = $matriks['4']['daya_listrik'];

        //baris 6
        $dh = $matriks['5']['harga'];
        $db = $matriks['5']['luas_bangunan'];
        $dt = $matriks['5']['luas_tanah'];
        $dk = $matriks['5']['kamar_tidur'];
        $dm = $matriks['5']['kamar_mandi'];
        $dd = $matriks['5']['daya_listrik'];

        return view('spk.spk-bobot', [
            'title' => 'Matriks Bobot',
            // baris 1
            'hh' => $hh,
            'hb' => $hb,
            'ht' => $ht,
            'hk' => $hk,
            'hm' => $hm,
            'hd' => $hd,

            // baris 2
            'bh' => $bh,
            'bb' => $bb,
            'bt' => $bt,
            'bk' => $bk,
            'bm' => $bm,
            'bd' => $bd,

            // baris 3
            'th' => $th,
            'tb' => $tb,
            'tt' => $tt,
            'tk' => $tk,
            'tm' => $tm,
            'td' => $td,

            // baris 4
            'kh' => $kh,
            'kb' => $kb,
            'kt' => $kt,
            'kk' => $kk,
            'km' => $km,
            'kd' => $kd,

            // baris 5
            'mh' => $mh,
            'mb' => $mb,
            'mt' => $mt,
            'mk' => $mk,
            'mm' => $mm,
            'md' => $md,

            // baris 6
            'dh' => $dh,
            'db' => $db,
            'dt' => $dt,
            'dk' => $dk,
            'dm' => $dm,
            'dd' => $dd,
        ]);
    }

    public function normalisasimatriks(){
        return view('spk.spk-normalisasi-matriks', [
            'normalisasi' => NormalisasiMatriks::all(),
            'title' => 'Normalisasi Matriks'
        ]);
    }

    public function konsistensi(){
        $nilai = Konsistensi::all();
        $konsistensi = $nilai[0]['konsistensi']; 
        return view('spk.spk-konsistensi', [
            'title' => 'Konsistensi',
            'konsistensi' => $konsistensi
        ]);
    }

    public function normalisasialternative(){
        return view('spk.spk-normalisasi-alternatives', [
            'title' => 'Normalisasi Alternatives',
            'alternatives' => NormalisasiAlternative::all()
        ]);
    }

    public function perankingan(){
        return view('spk.spk-perankingan', [
            'title' => 'Perankingan',
            'ranks' => Perankingan::all()
        ]);
    }
}

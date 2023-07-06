@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">Matriks Bobot</h4>
            <form action="" method="POST">
                @csrf
                <table class="table table-striped" style="font-size: 13px">
                    <thead>
                        <tr class="text-center">
                            <th>Variabel</th>
                            <th>Harga</th>
                            <th>L. Bangunan</th>
                            <th>L. Tanah</th>
                            <th>K. Tidur</th>
                            <th>K. Mandi</th>
                            <th>D. Listrik</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Harga</td>
							<td style="width: 200px" class="text-center">
                                <select name="hh" id="hh">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="hb" id="hb">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="ht" id="ht">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="hk" id="hk">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="hm" id="hm">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="hd" id="hd">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>L.Bangunan</td>
							<td style="width: 200px">
                                <select name="bh" id="bh">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px" class="text-center">
                                <select name="bb" id="bb">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="bt" id="bt">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="bk" id="bk">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="bm" id="bm">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="bd" id="bd">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>L. Tanah</td>
							<td style="width: 200px">
                                <select name="th" id="th">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="tb" id="tb">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px" class="text-center">
                                <select name="tt" id="tt">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="tk" id="tk">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="tm" id="tm">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="td" id="td">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>K. Tidur</td>
							<td style="width: 200px">
                                <select name="kh" id="kh">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="kb" id="kb">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="kt" id="kt">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px" class="text-center">
                                <select name="kk" id="kk">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="km" id="km">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="kd" id="kd">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>K. Mandi</td>
							<td style="width: 200px">
                                <select name="mh" id="mh">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="mb" id="mb">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="mt" id="mt">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="mk" id="mk">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px" class="text-center">
                                <select name="mm" id="mm">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px">
                                <select name="md" id="md">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>D. Listrik</td>
							<td style="width: 200px">
                                <select name="dh" id="dh">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="db" id="db">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="dt" id="dt">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="dk" id="dk">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
							<td style="width: 200px">
                                <select name="dm" id="dm">
                                    <option value="7">Sangat Lebih Penting</option>
                                    <option value="5">Lebih Penting</option>
                                    <option value="3">Cukup Penting</option>
                                    <option value="1">Sama Penting</option>
                                    <option value="0.3333333333">Tidak Cukup Penting</option>
                                    <option value="0.2">Tidak Lebih Penting</option>
                                    <option value="0.1428571429">Sangat Tidak Lebih Penting</option>
                                </select>
                            </td>
                            <td style="width: 200px" class="text-center">
                                <select name="dd" id="dd">
                                    <option value="1">Sama Penting</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">CANCEL</a>
                <a href="/spk/normalisasi-matriks" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: black">NORMALISASI</a>
            </div>
        </div>
    </section>
@endsection
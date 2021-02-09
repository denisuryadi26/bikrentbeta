<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VendorController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        return view('vendor.index');
    }
}

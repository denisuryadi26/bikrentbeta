<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LogController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        return view('log.index');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        return view('user.index');
    }
}

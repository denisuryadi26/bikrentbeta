<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TransactionController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        return view('transaction.index');
    }
}

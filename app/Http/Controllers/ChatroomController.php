<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ChatroomController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        return view('chatroom.index');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::paginate(5);
        return view('order.index', compact('orders'));
    }

    public function show($id)
    {
        return view('order.single', ['title' => $id]);
    }
}

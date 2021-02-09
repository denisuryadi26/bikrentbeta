@extends('layout.app')

@section('content')
    <h1>Ini halaman Order</h1>

    @foreach ($orders as $order)
        <p>Sumber : {{$order['sumber']}}</p>
        <p>Produk : {{$order['produk']}}</p>
        <p>Profit : {{$order['profit']}}</p>
    @endforeach

    <div>
        {{$orders->links()}};
    </div>
@endsection
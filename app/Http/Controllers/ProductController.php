<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $products = Product::latest()->paginate(10);
        return view('product.index', compact('products'));
    }

    /**
    * create
    *
    * @return void
    */
    public function create()
    {
        return view('product.create');
    }


    /**
    * store
    *
    * @param  mixed $request
    * @return void
    */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title'   => 'required',
            'price'   => 'required',
            'image'   => 'required|image|mimes:png,jpg,jpeg|max:2048',
            'content' => 'required'
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/product', $image->getClientOriginalName());

        $product = product::create([
            'title'     => $request->title,
            'price'     => preg_replace('([^0-9])', '', $request->price),
            'image'     => $image->getClientOriginalName(),
            'content'   => $request->content
        ]);

        if($product){
            //redirect dengan pesan sukses
            return redirect()->route('product.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('product.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }
    /**
    * edit
    *
    * @param  mixed $product
    * @return void
    */
    public function edit(Product $product)
    {
        return view('product.edit', compact('product'));
    }


    /**
    * update
    *
    * @param  mixed $request
    * @param  mixed $product
    * @return void
    */
    public function update(Request $request, Product $product)
    {
        $this->validate($request, [
            'title'   => 'required',
            'price'   => 'required',
            'content' => 'required'
        ]);

        //get data Product by ID
        $product = Product::findOrFail($product->id);

        if($request->file('image') == "") {

            $product->update([
                'title'   => $request->title,
                'price'   => preg_replace('([^0-9])', '', $request->price),
                'content' => $request->content
            ]);

        } else {

            //hapus old image
            Storage::disk('local')->delete('public/product/'.$product->image);

            //upload new image
            $image = $request->file('image');
            $image->storeAs('public/product', $image->getClientOriginalName());

            $product->update([
                'image'     => $image->getClientOriginalName(),
                'title'     => $request->title,
                'price'     => preg_replace('([^0-9])', '', $request->price),
                'content'   => $request->content
            ]);

        }

        if($product){
            //redirect dengan pesan sukses
            return redirect()->route('product.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('product.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    /**
    * destroy
    *
    * @param  mixed $id
    * @return void
    */
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        Storage::disk('local')->delete('public/product/'.$product->image);
        $product->delete();

        if($product){
            //redirect dengan pesan sukses
            return redirect()->route('product.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('product.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}

<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
    <title>Product</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
</head>
<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        @include('layout.navbar')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('layout.sidebar')

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Product</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Product</li>
                        </ol>
                    </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card border-0 shadow rounded">
                                <div class="card-body">
                                    <a href="{{ route('product.create') }}" class="btn btn-md btn-success mb-3"><i class="fas fa-plus"></i></a>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">NO</th>
                                                <th scope="col">PRODUCT NAME</th>
                                                <th scope="col">PRICE</th>
                                                <th scope="col">IMAGE</th>
                                                <th scope="col">DESCRIPTION</th>
                                                <th scope="col">ACTION</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($products as $product)
                                            <tr>
                                                <td style="width: 50px" class="text-center">{{ $loop->iteration + $products->firstItem() - 1 }}</td>
                                                <td>{{ $product->title }}</td>
                                                <td>Rp. {{ number_format($product->price,0,',','.') }}</td>
                                                <td class="text-center">
                                                    <!-- <img src="{{ Storage::url('public/product/').$product->image }}" data-lightbox="image-1" class="rounded" style="width: 150px"> -->
                                                    <a class="zoomimage" href="{{ Storage::url('public/product/').$product->image }}" data-lightbox="example-1" data-title="{{ $product->title }}"><img  class="rounded" style="width: 150px" src="{{ Storage::url('public/product/').$product->image }}" alt="image-1" /></a>
                                                </td>
                                                <td>{!! $product->content !!}</td>
                                                <td class="text-center">
                                                    <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('product.destroy', $product->id) }}" method="POST">
                                                        <a href="{{ route('product.edit', $product->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            @empty
                                                <div class="alert alert-danger">
                                                    Product belum Tersedia.
                                                </div>
                                            @endforelse
                                        </tbody>
                                    </table>  
                                    <br>
                                    <!-- {{ $products->links() }} -->
                                    {{ $products->links('pagination::bootstrap-4') }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            @include('layout.rightsidebar')
        </aside>
        <!-- /.control-sidebar -->

        <footer class="main-footer">
            @include('layout.footer')
        </footer>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <!-- jQuery -->
    <script src="{{asset('assets/plugins/jquery/jquery.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('assets/dist/js/adminlte.min.js')}}"></script>

    <script>
        //message with toastr
        @if(session()-> has('success'))
        
            toastr.success('{{ session('success') }}', 'BERHASIL!'); 

        @elseif(session()-> has('error'))

            toastr.error('{{ session('error') }}', 'GAGAL!'); 
            
        @endif
    </script>
    <script src="{{asset('assets/lightbox2/dist/js/lightbox-plus-jquery.min.js')}}"></script>
</body>
</html>
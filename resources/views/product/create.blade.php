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
                                    <form action="{{ route('product.store') }}" method="POST" enctype="multipart/form-data">
                                    
                                        @csrf

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">PRODUCT</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Input Product Name">
                                            </div>
                                        
                                            <!-- error message untuk title -->
                                            @error('title')
                                                <div class="alert alert-danger mt-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">PRICE</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control @error('price') is-invalid @enderror" id="rupiah" name="price" value="{{ old('price') }}" placeholder="Input Price">
                                            </div>
                                        
                                            <!-- error message untuk price -->
                                            @error('price')
                                                <div class="alert alert-danger mt-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">IMAGE</label>
                                            <div class="col-sm-4">
                                                <input type="file" class="form-control @error('image') is-invalid @enderror" name="image">
                                            </div>
                                        
                                            <!-- error message untuk title -->
                                            @error('image')
                                                <div class="alert alert-danger mt-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">DESCRIPTION</label>
                                            <div class="col-sm-4">
                                                <textarea class="form-control @error('content') is-invalid @enderror" name="content" rows="5" placeholder="Please Input Description">{{ old('content') }}</textarea>
                                            </div>
                                        
                                            <!-- error message untuk content -->
                                            @error('content')
                                                <div class="alert alert-danger mt-2">
                                                    {{ $message }}
                                                </div>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label"></label>
                                            <button type="submit" class="btn btn-md btn-primary">SAVE</button>&nbsp;
                                            <button type="reset" class="btn btn-md btn-danger">RESET</button>
                                        </div>
                                    </form> 
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
    <script type="text/javascript">
        $(document).ready(function()
        {
            var rupiah = document.getElementById('rupiah');
            rupiah.addEventListener('keyup', function(e)
            {
                // tambahkan 'Rp.' pada saat form di ketik
                // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
                rupiah.value = formatRupiah(this.value, 'Rp. ');
            });

            /* Fungsi formatRupiah */
            function formatRupiah(angka, prefix){
                var number_string = angka.replace(/[^,\d]/g, '').toString(),
                split           = number_string.split(','),
                sisa            = split[0].length % 3,
                rupiah          = split[0].substr(0, sisa),
                ribuan          = split[0].substr(sisa).match(/\d{3}/gi);

                // tambahkan titik jika yang di input sudah menjadi angka ribuan
                if(ribuan){
                    separator = sisa ? '.' : '';
                    rupiah += separator + ribuan.join('.');
                }

                rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
                return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
            }
        });
    </script>

</body>
</html>
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
                                @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                    <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                    </ul>
                                </div>
                                @endif

                                    @if(session('success'))
                                    <div class="alert alert-success">
                                    {{ session('success') }}
                                    </div> 
                                    @endif
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
                                                <!-- <input type="file" class="form-control @error('image') is-invalid @enderror" name="image"> -->
                                                <div class="input-group control-group increment" >
                                                <input type="file" name="image[]" class="form-control @error('image') is-invalid @enderror">
                                                <div class="input-group-btn"> 
                                                    <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
                                                </div>
                                                </div>
                                                <div class="clone hide">
                                                <div class="control-group input-group" style="margin-top:10px">
                                                    <input type="file" name="image[]" class="form-control">
                                                    <div class="input-group-btn"> 
                                                    <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                                                    </div>
                                                </div>
                                                </div>
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

$(document).ready(function() {

    $(".btn-success").click(function(){ 
        var html = $(".clone").html();
        $(".increment").after(html);
    });

    $("body").on("click",".btn-danger",function(){ 
        $(this).parents(".control-group").remove();
    });

});

</script>

</body>
</html>
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
           
           
            <form action="{{url('testUsuario')}}" class="form-horizontal" method="post" enctype="multipart/form-data">
               <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <div class="card">
                    <h2 class="card-header" style="text-align:center"><b>MÓDULO COVID</b></h2>
                    <div class="card-body">
                        <select class="custom-select" id="persona" name="persona">
                            @foreach($personas as $persona)
                            <option value="{{$persona->id}}">{{$persona->nombre}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-12" style="padding-bottom:20px; text-align:center">
                        <button type="submit" class="btn btn-outline-success">TEST</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
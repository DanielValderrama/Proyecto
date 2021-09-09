@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header" style="text-align:center"><b>MÓDULO COVID</b></div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <form action="{{ url('test') }}" method="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        @foreach($preguntas as $pregunta)
                        <div class="card text-center">
                            <div class="card-header">
                                {{$pregunta->pregunta}}
                            </div>
                            <div class="card-body">
                                <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="{{$pregunta->id}}">
                                        <label class="custom-control-label" for="customSwitch1"></label>
                                    </div>
                            </div>
                        </div><br>
                        @endforeach
                        <br><br>
                        <div class="col text-center">
                            <button class="btn btn-primary center-block" type="submit" value="Guardar">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

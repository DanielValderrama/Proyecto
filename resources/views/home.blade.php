@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">TEST</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <form action="{{ url('test') }}" method="POST">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <table CELLPADDING="10">
                            <tr>
                                <th style="text-align: center">QUESTIONARIO</th>
                                <th style="text-align: center"></th>
                                <th style="text-align: center"></th>
                                <th style="text-align: center"></th>

                            </tr>
                            <tr>
                                <td>¿PRESENTA TOS RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>

                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch1">
                                        <label class="custom-control-label" for="customSwitch1"></label>
                                    </div>
                                </td>

                                <td>SI</td>

                            </tr>
                            <tr>
                                <td>¿PRESENTA ESCALOFRIO RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS?</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch2">
                                        <label class="custom-control-label" for="customSwitch2"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA DOLOR DE GARGANTA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch3">
                                        <label class="custom-control-label" for="customSwitch3"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA DOLOR CORPORAL O MALESTAR GENERAL RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch4">
                                        <label class="custom-control-label" for="customSwitch4"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA DOLOR DE CABEZA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch5">
                                        <label class="custom-control-label" for="customSwitch5"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA FIEBRE MAYOR A 37.8 °C, RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch6">
                                        <label class="custom-control-label" for="customSwitch6"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA PERDIDA DEL OLFATO, RECURRENTE O ESPONTANEA HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch7">
                                        <label class="custom-control-label" for="customSwitch7"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTA DIFICULTAD PARA RESPIRAR COMO SI NO ENTRARA AIRE A SUS PULMONES DE MANERA RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch8">
                                        <label class="custom-control-label" for="customSwitch8"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿PRESENTO FATIGA O REAL DETERIORO DE MIS MOVIMIENTOS Y MIS GANAS DE HACER ALGO, ES RECURRENTE O ESPONTANEO HOY O EN DIAS PREVIOS? (2 o 3 DIAS ANTES)</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch9">
                                        <label class="custom-control-label" for="customSwitch9"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿HAS VIAJADO EN LOS UTIMOS 14 DIAS FUERA DE LA CIUDAD? </td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch10">
                                        <label class="custom-control-label" for="customSwitch10"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿HAS VIAJADO O ESTADO EN ZONAS AFECTADAS POR COVID19?</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch11">
                                        <label class="custom-control-label" for="customSwitch11"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                            <tr>
                                <td>¿HAS CUIDADO O ESTADO EN CONTACTO CON PACIENTE POSITIVO COVID19?</td>
                                <td>NO</td>
                                <td>
                                    <!-- switch -->
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch12">
                                        <label class="custom-control-label" for="customSwitch12"></label>
                                    </div>
                                </td>

                                <td>SI</td>
                            </tr>
                        </table>
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

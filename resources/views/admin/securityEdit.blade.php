<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    @if (session('msg'))
        <div class="alert alert-success">
            {{ session('msg') }}
        </div>
    @endif
          
    <div class='panel-heading'>Edit Form</div>
    <div class='panel-body'>
      <form method='post' action='{{url('securitysave/')}}'>
        {{csrf_field()}}
        <div class='form-group'>
          <label>Name</label>
          <input type='text' name='keyword' required class='form-control' value='{{$row->keyword}}'/>
        </div>
         
        <!-- etc .... -->
        
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
      </form>
    </div>
  </div>
@endsection
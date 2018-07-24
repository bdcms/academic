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
      <form method='post' action='{{url('saveSocial/')}}'>
        {{csrf_field()}}
        <div class='form-group'>
          <label>Facebook</label>
          <input type='text' name='facebook' required class='form-control' value='{{$row->facebook}}'/>
          <span class="text-danger">{{ $errors->first('facebook')}} </span>
        </div>
        <div class='form-group'>
          <label>Twitter</label>
          <input type='text' name='twitter' required class='form-control' value='{{$row->twitter}}'/>
          <span class="text-danger">{{ $errors->first('twitter')}} </span>
        </div>
        <div class='form-group'>
          <label>Linked In</label>
          <input type='text' name='linkedin' required class='form-control' value='{{$row->linkedin}}'/>
          <span class="text-danger">{{ $errors->first('linkedin')}} </span>
        </div>
        <div class='form-group'>
          <label>Research Gate</label>
          <input type='text' name='researchgate' required class='form-control' value='{{$row->researchgate}}'/>
          <span class="text-danger">{{ $errors->first('researchgate')}} </span>
        </div>
         <input type="hidden" name="teacher_id" value="{{$row->teacher_id}}">
        <!-- etc .... -->
        
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
      </form>
    </div>
  </div>
@endsection
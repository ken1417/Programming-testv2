@extends('teachers.layout')
@section('content')

<div class="card" style="margin:20px;">
  <div class="card-header">Edit Teacher's Data</div>
  <div class="card-body">

      <form action="{{ url('teachers/' .$teacher->id) }}" method="post">
        {!! csrf_field() !!}
        @method("PATCH")
        <input type="hidden" name="id" id="id" value="{{$teacher->id}}" id="id" />
        <label>Name</label></br>
        <input type="text" name="fullName" id="fullName" value="{{$teacher->fullName}}" class="form-control"></br>
        <label>Major Subject: </label>
                    <select name="major" id="major" class="form-control" value="{{$teacher->major}}">
                      <option value="Science">Science</option>}
                      <option value="Mathematics">Mathematics</option>
                      <option value="English">English</option>
                      <option value="MAPEH">MAPEH</option>
                      <option value="Computer">Computer</option>
                      <option value="Chemistry">Chemistry</option>
                      <option value="Economics">Economics</option>
                      <option value="Araling Panlipunan">Araling Panlipunan</option>
                      <option value="Music">Music</option>
                    </select>
        <label>Date Hired : </label><br>
        <input type="date" name="dateHired" id="dateHired" value="{{$teacher->dateHired}}" class="form-control" />
        <input type="submit" value="Update" class="btn btn-success"></br>
    </form>

  </div>
</div>

@stop

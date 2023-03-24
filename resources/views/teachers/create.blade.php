@extends('teachers.layout')
@section('content')

<div class="card" style="margin:20px;">
  <div class="card-header">Create New Teacher's Data</div>
  <div class="card-body">

      <form action="{{ url('teachers') }}" method="post">
        {!! csrf_field() !!}
        <label>Full Name</label></br>
        <input type="text" name="fullName" id="fullName" class="form-control"></br>
        <label>Major Subject: </label>
                    <select name="major" id="major" class="form-control">
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
        <input type="date" name="dateHired" id="dateHired" class="form-control" />
        <input type="submit" value="Save" class="btn btn-success"></br>
    </form>

  </div>
</div>

@stop

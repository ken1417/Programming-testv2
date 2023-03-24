@extends('teachers.layout')
@section('content')

<div class="card" style="margin:20px;">
  <div class="card-header">Teacher's Page</div>
  <div class="card-body">
        <div class="card-body">
        <h5 class="card-title">Full Name : {{ $teacher->fullName }}</h5>
        <p class="card-text">Major : {{ $teacher->major }}</p>
        <p class="card-text">Date Hired : {{ $teacher->dateHired }}</p>
  </div>
    </hr>
  </div>
</div>

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
      $teachers = Teacher::all();
      return response()->json([
        'status'=> true,
        'message'=>"Teacher's data has been retrieved!",
        'data'=>$teachers,
      ]);
      //return view ('teachers.index')->with('teacher', $teachers);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('teachers.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {      
      $input = $request->all();
      $teachers = Teacher::create($input);

      //return redirect('teachers')->with('flash_message', "Teacher's Data has been Added!");
      return response()->json([
        'status'=> true,
        'message'=>"Teacher's data has been added!",
        'data'=>$teachers,
      ],201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request, string $id)
    {
      $teachers = Teacher::find($id);
      //return view('teachers.show')->with('teachers', $teacher);
      return response()->json([
        'status'=> true,
        'message'=>"Teacher's data has been found.",
        'data'=>$teachers,
      ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
      $teachers = Teacher::find($id);
      //return view('teachers.edit')->with('teachers', $teachers);
      return response()->json([
        'status'=> true,
        'message'=>"Teacher's data has been edited.",
        'data'=>$teachers,
      ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
      $teachers = Teacher::find($id);
      $input = $request->all();
      $teachers->update($input);
      //return redirect('teachers')->with('flash_message', "Teacher's Data has been Updated!");
      if($teachers)
      {
        return response()->json([
          'status'=> true,
          'message'=>"Teacher's data has been updated!",
          'data'=>$teachers,
        ]);
      } else {
        return response()->json([
          'status'=> false,
          'message'=>"Teacher's data not found",
          'data'=>null,
        ],404);
      }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, string $id)
    {
      $teachers = Teacher::destroy($id);
      //return redirect('teachers')->with('flash_message', "Teacher's Data has been Deleted!");
      if($teachers)
      {
        return response()->json([
          'status'=> true,
          'message'=>"Teacher's data has been deleted!",
          'data'=>$teachers,
        ]);
      } else {
        return response()->json([
          'status'=> false,
          'message'=>"Teacher's data not found",
          'data'=>null,
        ]);
      }
    }
}

<?php

namespace App\Http\Controllers;

use App\Filters\TeachersFilter;
use App\Filters\SubjectsFilter;
use App\Http\Controllers\ResponseController;
use App\Http\Requests\StoreTeacherRequest;
use App\Http\Requests\UpdateTeacherRequest;
use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\Subject;
use App\Models\User;
use App\Http\Resources\TeacherResource;
use App\Http\Resources\SubjectResource;
use App\Http\Resources\TeacherCollection;
use App\Http\Resources\SubjectCollection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class TeacherController extends ResponseController
{
    public function index(Request $request)
    {
      $filter = new TeachersFilter();
      $teachers = Teacher::with($filter->transform($request));
      return new TeacherCollection($teachers->paginate(10)->appends($request->query()));
      //return TeacherResource::collection(Teacher::all());
    }

    public function create()
    {
        return view('teachers.create');
    }

    public function store(StoreTeacherRequest $request, Teacher $teacher)
    {
      $request->validated($request->all());
      $teacher = new Teacher();
      $teacher->fill($request->except(['major']));
      $teacher->save();
      return $this->sendResponse(new TeacherResource($teacher), 'Data successfully processed.');
    }

    public function show(Teacher $teacher)
    {
      return new TeacherResource($teacher);
      //return $teacher->subject;
    }

    public function edit(string $id)
    {
      //
    }

    public function update(UpdateTeacherRequest $request, Teacher $teacher)
    {
      if (is_null($teacher)) {
        return $this->sendError('Validation Error');
      }
      $teacher->update([
        'full_name'=>$request->input('full_name'),
        'date_hired'=>$request->input('date_hired'),
      ]);

      return $this->sendResponse(
        new TeacherResource($teacher),
        'Data successfully processed.'
      );
    }

    public function destroy(Teacher $teacher)
    {
      $teacher->delete();
      return $this->sendResponse([], 'Data successfully deleted.');
    }
}

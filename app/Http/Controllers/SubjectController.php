<?php

namespace App\Http\Controllers;

use App\Filters\SubjectsFilter;
use App\Http\Controllers\ResponseController;
use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\Subject;
use App\Models\User;
use App\Http\Resources\SubjectResource;
use App\Http\Resources\SubjectCollection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SubjectController extends ResponseController
{
  public function index(Request $request)
  {
    return SubjectResource::collection(Subject::all());
  }

  public function create()
  {
      return view('teachers.create');
  }

  public function store(Request $request)
  {
    $faker = \Faker\Factory::create(1);
    $subject = Subject::create([
      'major'=>$faker->randomElement([
        "Science",
        "Mathematics",
        "English",
        "MAPEH",
        "Computer",
        "Chemistry",
        "Economics",
        "Araling Panlipunan",
        "Music"])
    ]);
    return $this->sendResponse(new SubjectResource($subject), 'Data successfully processed.');
  }

  public function show(Subject $subject)
  {
    return new SubjectResource($subject);
  }

  public function edit(string $id)
  {
    //
  }

  public function update(Request $request, Subject $subject)
  {
    if (is_null($subject)) {
      return $this->sendError('Validation Error');
    }
    $subject->update([
      'teacher_id'=>$request->input('teacher_id'),
      'major'=>$request->input('major'),
    ]);

    return $this->sendResponse(
      new SubjectResource($subject),
      'Data successfully processed.'
    );
  }

  public function destroy(Subject $subject)
  {
    $subject->delete();
    return $this->sendResponse([], 'Data successfully deleted.');
  }
}

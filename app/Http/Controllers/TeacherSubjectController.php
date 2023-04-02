<?php

namespace App\Http\Controllers;

use App\Models\TeacherSubject;
use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\StoreTeacherSubjectRequest;
use App\Http\Requests\UpdateTeacherSubjectRequest;

class TeacherSubjectController extends Controller
{

    public function index()
    {
      //
    }

    public function create()
    {
      //
    }


    public function store(StoreTeacherSubjectRequest $request, TeacherSubject $teachsub)
    {

    }

    public function show()
    {
      //
    }


    public function edit()
    {
      //
    }

    public function update()
    {

    }

    public function destroy(TeacherSubject $teachsub)
    {
      $teachsub->delete();
      return $this->sendResponse([], 'Data successfully deleted.');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Subject;

class Teacher extends Model
{
    use HasFactory;
    public $table="teacher";
    protected $fillable = [
      'full_name',
      'date_hired',
    ];
    protected $hidden = [
      'laravel_through_key',
    ];

    public function subject()
    {
      return $this->hasManyThrough(
        '\App\Models\Subject',
        '\App\Models\TeacherSubject',
        'teacher_id',
        'id',
        'id',
        'subject_id'
      );
    }

}

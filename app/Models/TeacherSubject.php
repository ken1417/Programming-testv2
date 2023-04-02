<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherSubject extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'teacher_subject';
    protected $fillable = [
      'teacher_id',
      'subject_id',
    ];
}

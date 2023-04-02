<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Teacher;

class Subject extends Model
{
    use HasFactory;
    public $timestamps = false;
    public $table="subject";

    protected $fillable=[
      'major',
    ];
    public function subject()
    {
      return $this->hasManyThrough(
        '\App\Models\Teacher',
        '\App\Models\TeacherSubject',
        'teacher_id',
        'id',
        'id',
        'subject_id'
      );
    }
}

<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SubjectResource extends JsonResource
{
  public function toArray($request)
  {
    return [
      'id' =>$this->id,
      'type'=>'Subjects',
      'attributes'=> [
        'major'=>$this->major,
      ]
    ];
  }
}

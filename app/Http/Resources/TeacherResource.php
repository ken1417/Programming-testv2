<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TeacherResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray($request)
    {
        return [
          'id'=>$this->id,
          'type'=>'Teachers',
          'attributes'=>[
            'fullName'=>$this->full_name,
            'subject'=>$this->subject,
            'dateHired'=>$this->date_hired,
            'updated_at'=>$this->updated_at,
            'created_at'=>$this->created_at,
          ]
          //'teacher_id'=>$this->when($request->)
          //'teacher_id'=>$this->subject->teacher_id,
          //'major'=>$this->subject->major,
          //'subjectDetails'=> SubjectResource::collection($this->whenLoaded('subject')),
        ];
    }
}

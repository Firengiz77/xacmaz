<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class VacancyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'title_1'=>$this->title_1,
            'desc_1'=>$this->desc_1,
            'desc_2'=>$this->desc_2,
            'desc_3'=>$this->desc_3,
            'end_date'=>$this->end_date,
            'salary'=>$this->salary,
        ];
    }
}

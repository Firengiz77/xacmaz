<?php

namespace App\Http\Resources;

use TCG\Voyager\Facades\Voyager;
use Illuminate\Http\Resources\Json\JsonResource;

class NewsResource extends JsonResource
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
            'title'=>$this->title,
            'desc'=>$this->desc,
            'image'=>Voyager::image($this->image),
            'date'=>date('d.m.Y', strtotime($this->created_at)),
        ];
    }
}

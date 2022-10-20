<?php

namespace App\Http\Resources;

use TCG\Voyager\Facades\Voyager;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
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
            'name'=>$this->name,
            'title'=>$this->title,
            'image'=>Voyager::image($this->image),
        ];
    }
}

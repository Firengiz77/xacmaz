<?php

namespace App\Http\Resources;
use Illuminate\Support\Facades\App;
use TCG\Voyager\Facades\Voyager;

use Illuminate\Http\Resources\Json\JsonResource;

class GalleryResource extends JsonResource
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
            'image'=>Voyager::image($this->image),
            'attribute'=>$this->attribute,
        ];
    }
}

<?php

namespace App\Http\Resources;

use App\Models\GalleryType;
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
            'link'=>$this->link,
            'type'=> GalleryType::where('id',$this->type_id)->get(),
            'image'=>Voyager::image($this->image),
        ];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\GalleryType;
use App\Http\Requests\StoreGalleryTypeRequest;
use App\Http\Requests\UpdateGalleryTypeRequest;
use App\Http\Resources\TypeResource;

class GalleryTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $type = GalleryType::with('translations')->orderBy('id','asc')->get();
        return response()->json(TypeResource::collection($type));
    }
    public function single($id){
        $type = GalleryType::with('translations')->find($id);
        return new TypeResource($type);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreGalleryTypeRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreGalleryTypeRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GalleryType  $galleryType
     * @return \Illuminate\Http\Response
     */
    public function show(GalleryType $galleryType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GalleryType  $galleryType
     * @return \Illuminate\Http\Response
     */
    public function edit(GalleryType $galleryType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateGalleryTypeRequest  $request
     * @param  \App\Models\GalleryType  $galleryType
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateGalleryTypeRequest $request, GalleryType $galleryType)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GalleryType  $galleryType
     * @return \Illuminate\Http\Response
     */
    public function destroy(GalleryType $galleryType)
    {
        //
    }
}

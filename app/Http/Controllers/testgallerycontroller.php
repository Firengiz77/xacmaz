<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Http\Requests\StoreGalleryRequest;
use App\Http\Requests\UpdateGalleryRequest;
use App\Http\Requests\StoreCoursesRequest;
use App\Http\Requests\UpdateCoursesRequest;
use App\Http\Resources\GalleryResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     
    public function allapi(){
        $courses = Courses::with('translations')->orderBy('id','asc')->get();
        //$programs = Programs::with('translations')->orderBy('id','asc')->get();
        $gallery = Gallery::with('translations')->orderBy('id','asc')->get();
        $seo = Seo::with('translations')->orderBy('id','asc')->get();
        $category = Category::with('translations')->orderBy('id','asc')->get();
        
        return response()->json(['Kurslar'=>CourseResource::collection($courses),'Galeriyalar'=>GalleryResource::collection($gallery),'Seo'=>SeoResource::collection($seo),'Kateqoriyalar'=> CategoryResource::Collection($category)]);
        
        }



    public function index()
    {
        $gallery = Gallery::with('translations')->orderBy('id','asc')->get();
        return response()->json(GalleryResource::collection($gallery));
    }
    public function single($id){
        $gallery = Gallery::with('translations')->find($id);
        return new GalleryResource($gallery); ;
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
     * @param  \App\Http\Requests\StoreGalleryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreGalleryRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function show(Gallery $gallery)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function edit(Gallery $gallery)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateGalleryRequest  $request
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateGalleryRequest $request, Gallery $gallery)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $gallery = Gallery::all()->find($id);
        try {
            $gallery->delete();
            return response()->json(['message' => 'Item deleted'], 204);
        } catch (Exception $ex) {
            return response()->json(['message' => 'Item not found'], 404);
        }
    }
}

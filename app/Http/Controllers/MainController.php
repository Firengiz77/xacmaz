<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Slider;
use App\Models\Contact;
use App\Models\Gallery;
use App\Models\Partner;
use App\Models\Vacancy;
use App\Models\GalleryType;
use Illuminate\Http\Request;
use App\Http\Resources\NewsResource;
use App\Http\Resources\TypeResource;
use App\Http\Requests\MessageRequest;
use App\Http\Resources\SliderResource;
use App\Http\Resources\ContactResource;
use App\Http\Resources\GalleryResource;
use App\Http\Resources\PartnerResource;
use App\Http\Resources\VacancyResource;
use App\Models\Message;
use Illuminate\Support\Facades\Mail;


class MainController extends Controller
{
    public function index(){
        $sliders = Slider::with('translations')->orderBy('id','asc')->get();
        $news = News::with('translations')->orderBy('id','asc')->get();
        $galleries = Gallery::orderBy('id','asc')->get();
        $type = GalleryType::with('translations')->orderBy('id','asc')->get();
        $partners = Partner::orderBy('id','asc')->get();
        $vacancy = Vacancy::with('translations')->orderBy('id','asc')->get();
        $contact = Contact::orderBy('id','asc')->get();

        return response()->json([
        'Slider'=> SliderResource::collection($sliders),
        'Galeriyalar'=> GalleryResource::collection($galleries),
        'Type'=> TypeResource::collection($type),
        'Xeberler'=> NewsResource::collection($news),
        'Vakansiya'=> VacancyResource::collection($vacancy),
        'Partnyorlar'=> PartnerResource::Collection($partners),
        'Contact'=> ContactResource::collection($contact)
    ]);
        
    }

    public function sendmail3(Request $request,MessageRequest $request2){
        // return json_decode($request->courses_id2)->name;

       $validator = $request2->validated();

       $message = Message::create($request2->all());

       $message->save();
    
       $request->validate([
        'name'=>'required',
        'email'=>'required',
        'msj'=>'required'
       ]);

       $email=['firengizsariyeva77@gmail.com','turkay6006@gmail.com']; 
       $array = [
           'name'=> $request->name,
           'email'=> $request->email,   
           'msj'=>$request->msj,
         ]; 
     Mail::send('message', $array,  function ($message2) use($email)  {
         $message2->to( $email, 'Xaçmaz Aqro');
         $message2->subject('Xaçmaz Aqro');
         return redirect()->back()->with('message','Email has been send Successfully !');
     });  


      return redirect()->back();

   }




}

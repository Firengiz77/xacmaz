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
use Illuminate\Support\Facades\Validator;
use App\Video;
use App\Fotogallery;
use App\Http\Resources\FotoGalleryResource;
use App\Http\Resources\VideoResource;
use App\Resume;
use App\Http\Requests\ResumeRequest;
use App\Product;
use App\Http\Resources\ProductResource;
use Http;

class MainController extends Controller
{

public function sendresume(Request $request){
    $validator = Validator::make($request->all(),[
        'name'=>'required',
        'surname'=>'required',
        'phone'=>'required',
        'email'=>'required',
        'file'=>'required',
        'gender'=>'required',
        'birthdate'=>'required',
        'experience'=>'required',
        'vacancy_id'=>'required',
    ]);
    if($validator->fails()){
        return response()->json($validator->errors());
    }

       $email=['firengizsariyeva77@gmail.com','turkay6006@gmail.com']; 
       $data = $request->all();
     //  $data['cv'] = $request->file('cv')->getClientOriginalName();
       if ($request->hasFile('file')) {
            $file = $request->file('file');
            $cv = rand() . $file->getClientOriginalName();
            $request->file('file')->move(public_path('documents'), $cv);
            $data['file'] = 'documents/' . $cv;
        }
        $message = Resume::create($data);

     //  $data['cv'] = Storage::path('public/TimeActivityReport/'.$file_name);
         

        // Mail::send("emails.message_mail", $data, function ($message) use ($to_email,$to_name,$data) {
        //     $message->to($to_email,$to_name)->subject("Jedai.az Saytindan muraciet gəldi");
        //     $message->attach($data['technical']);
        // });


     Mail::send('resume_email', $data,  function ($message2) use($email,$data)  {
         $message2->to( $email, 'Xaçmaz Aqro');
         $message2->subject('Xaçmaz Aqro');
         $message2->attach($data['file']);
     });  


  return response()->json([
          'message'=>'Vacancy sent successfully',
      ],200);
}


    public function index(){
        $sliders = Slider::with('translations')->orderBy('id','asc')->get();
        $news = News::with('translations')->orderBy('id','asc')->get();
        $partners = Partner::orderBy('id','asc')->get();
        $vacancy = Vacancy::with('translations')->orderBy('id','asc')->get();
        $contact = Contact::orderBy('id','asc')->get();
        $fotogallery = Fotogallery::orderBy('id','asc')->get();
        $video = Video::orderBy('id','asc')->get();
        $product = Product::with('translations')->orderBy('id','asc')->get();

        return response()->json([
        'Slider'=> SliderResource::collection($sliders),
        'Xeberler'=> NewsResource::collection($news),
        'Vakansiya'=> VacancyResource::collection($vacancy),
        'Partnyorlar'=> PartnerResource::Collection($partners),
        'Contact'=> ContactResource::collection($contact),
        'FotoQalereya' => FotoGalleryResource::collection($fotogallery),
        'Video' => VideoResource::collection($video),
        'Mehsullar'=> ProductResource::collection($product),
    ]);
        
    }

    public function sendmail(Request $request){
        // return json_decode($request->courses_id2)->name;
        $validator = Validator::make($request->all(),[
        'name'=>'required',
        'email'=>'required',
       ]);

       if($validator->fails()){
           return response()->json($validator->errors());
       }

       $message = Message::create($request->all());

       $message->save();
    

       $email=['firengizsariyeva77@gmail.com','turkay6006@gmail.com']; 
       $array = [
           'name'=> $request->name,
           'email'=> $request->email,   
           'msj'=>$request->msj,
         ]; 
     Mail::send('message', $array,  function ($message2) use($email)  {
         $message2->to( $email, 'Xaçmaz Aqro');
         $message2->subject('Xaçmaz Aqro');
     });  


      return response()->json([
          'message'=>'Message sent successfully',
      ]);

   }




}

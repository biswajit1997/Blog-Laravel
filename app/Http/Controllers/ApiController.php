<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Api;
use Illuminate\Support\Facades\Http;
use \GuzzleHttp\Client;

class ApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $data =  Api::get();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        
       Api::create($request->all());


        return response()->json([
            "message" => "record created"
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data  = Api::where('id',$id)->first();
        if($data){
            return response()->json($data);  
        }else{
            return response()->json([
                'massage'=> 'data not found'
            ]);
        }
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        Api::where('id',$request->id)
            ->update($request->all());
            
        return response()->json([
            "message" => "record update"
            ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Api::destroy('id',$id);

        return response()->json([
            "message" => "record deleted"
            ]);
    }

    public function get_api(){
        $res=Http::get('https://reqres.in/api/unknown');
        $api = $res->json();
        return view('api', ['api_data' => $api]);
       

    }
    public function edit_api_data(Request $request,$id){
        
        $res=Http::get('https://reqres.in/api/unknown/'.$id);
        $one_data=$res->json();
        return view('edit_data',['one_data' => $one_data['data']]);
    }
    public function update_api_data(Request $request){

        $ress=Http::put('https://reqres.in/api/unknown/'.$request->id,$request->all());
        return $ress->status();
    }
    public function delete_api_data($id){

        $ress=Http::delete('https://reqres.in/api/unknown/'.$id);
        return $ress->status();
    }

}

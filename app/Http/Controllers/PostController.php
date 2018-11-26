<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Events\PostPublished;
use App\Events\Added;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store(Request $request) {
        // ...
        // validation can be done here before saving
        // with $this->validate($request, $rules)
        // ...

        // get data to be saved in an associative array using $request->only()
        //$user=Auth::user()->name;
        $data = $request->only(['title', 'description','image_url','added_by']);

        //  save post and assign return value of created post to $post array
        $post = Post::create($data);


        event(new PostPublished($post));
        // return post as response, Laravel automatically serializes this to JSON
        return response($post, 201);
      }
      public function getUser(){
          //dd('hi');

        $user=Auth::user();
        return response($user,200);
      }
      public function fire(){

            event(new Added());
      }
      public function getCount(){

        $count=Post::all()->count();
        return response($count,200);


      }
}

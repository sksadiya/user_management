<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $users = User::latest();
        if (!empty ($request->get('search'))) {
            $users = $users->where('name', 'like', '%' . $request->get('search') . '%');
        }
        $users = $users->paginate(10);
        return view('users.list', compact('users'));
    }

    public function create() {
        return view( 'users.create' );
    }
    public function store(Request $request) {

        $validator = Validator::make($request->all(), [
            'firstName'  => 'required',
            'lastName'   => 'required',
            'email'      => 'required|unique:users,email',
            'password'   => 'required|min:8',
            'phone' => 'sometimes|nullable|digits:10'
        ]);

        if($validator->passes()) {
            $user = new User;
            $user->name = $request->firstName;
            $user->last_name = $request->lastName;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->phone = $request->phone;

            $user->save();
            $request->session()->flash('success','User created successfully');
            return response()->json([
                'status' => true,
                'message'=> 'User created successfully'
            ]);

        } else {
            return response()->json([
                'status' => false,
                'errors'=> $validator->errors()
            ]);
        }
    }

    public function edit( Request $request ,$id ) {
        $user  = User::find( $id );

        if(empty($user)) {
            $request->session()->flash('error','No user found!');
            return response()->json([
                "status" => false,
                "message"=> "No user found."
            ]);
        }
        return view('users.edit' ,compact('user'));
    }

    public function update(Request $request ,$id) {

        $user = User::find($id);
       
        if (empty($user)) {
            $request->session()->flash('error', 'user not found');
            return response()->json([
                'status' => false,
                'notFound' => true,
                'message' => 'user not found'
            ]);
        }

        $validator = Validator::make($request->all(), [
            'firstName'  => 'required',
            'lastName'   => 'required',
            'email' => [
                'required',
                Rule::unique('users')->ignore($user->id),
            ],
            'password'   => 'required|min:8',
            'phone' => 'sometimes|nullable|digits:10'
        ]);

        if($validator->passes()) {
            $user->name = $request->firstName;
            $user->last_name = $request->lastName;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->phone = $request->phone;

            $user->save();
            $request->session()->flash('success','User updated successfully');
            return response()->json([
                'status' => true,
                'message'=> 'User updated successfully'
            ]);

        } else {
            return response()->json([
                'status' => false,
                'errors'=> $validator->errors()
            ]);
        }
    }
    public function destroy(Request $request, $id)
    {
        $user = User::find($id);
        if (empty($user)) {
            $request->session()->flash('error', 'user not found');
            return response()->json([
                'status' => false,
                'message' => 'user not found'
            ]);
        }
        $user->delete();
        $request->session()->flash('success', 'deleted successfully');
        return response()->json([
            'status' => true,
            'message' => 'brand deleted successfully'
        ]);
    }

}

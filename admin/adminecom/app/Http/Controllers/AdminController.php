<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function AdminLogout(){
        Auth::logout();
        return Redirect()->route('login');
    } 
    public function UserProfile(){
        $adminData = User::find(Auth::id());
        return view('backend.admin.admin_profile',compact('adminData'));
    } 
    public function UserProfileStore(Request $request){
        $data = User::find(Auth::id());
        $data->name = $request->name;
        $data->email = $request->email;
       
        $data->save();
       
        return redirect()->route('user.profile');
    } 
    public function ChangePassword(){
        return view('backend.admin.change_password');
    } 

    public function ChangePasswordUpdate(Request $request){

        $validateData = $request->validate([
            'oldpassword' => 'required',
            'password' => 'required|confirmed'
        ]);

        $hashedPassword = User::find(Auth::id())->password;
        if (Hash::check($request->oldpassword,$hashedPassword)) {
            $user = User::find(1);
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();

            return redirect()->route('admin.logout');
        }
        else{
            return redirect()->back();
        }

    } 







}
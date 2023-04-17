<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteInfo;

class SiteInfoController extends Controller
{
    public function AllSiteInfo () {

        $result = SiteInfo::get();
        return $result;


    }


    public function GetSiteInfo(){

        $siteinfo = SiteInfo::find(1);
        return view('backend.siteinfo.siteinfo_update',compact('siteinfo'));

    }

    public function UpdateSiteInfo(Request $request){

        $siteinfo_id = $request->id;

        SiteInfo::findOrFail($siteinfo_id)->update([
            'about' => $request->about,
            'refund' => $request->refund,
            'purchase_guide' => $request->purchase_guide,
            'privacy' => $request->privacy,
            'address' => $request->address,
            'facebook_link' => $request->facebook_link,
            'twitter_link' => $request->twitter_link,
            'instagram_link' => $request->instagram_link,
            'copyright_text' => $request->copyright_text, 

        ]);


        return redirect()->back();

    }


}

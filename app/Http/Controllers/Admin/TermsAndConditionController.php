<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;
use Image;
use File;
class TermsAndConditionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin-api');
    }

    public function index()
    {
        $termsAndCondition = TermsAndCondition::first();
        $isTermsCondition = false;
        if($termsAndCondition){
            $isTermsCondition = true;
        }

        return response()->json(['termsAndCondition' => $termsAndCondition, 'isTermsCondition' => $isTermsCondition]);
    }


    public function store(Request $request)
    {
        $rules = [
            'terms_and_condition' => 'required',
        ];
        $customMessages = [
            'terms_and_condition.required' => trans('admin_validation.Terms and condition is required')
        ];
        $this->validate($request, $rules,$customMessages);

        $termsAndCondition = new TermsAndCondition();

        $termsAndCondition->terms_and_condition = $request->terms_and_condition;
        $termsAndCondition->save();

        $notification = trans('admin_validation.Created Successfully');
        return response()->json(['message' => $notification], 200);
    }


    public function update(Request $request, $id)
    {
        $termsAndCondition = TermsAndCondition::find($id);

        $rules = [
            'terms_and_condition' => 'required',
        ];
        $customMessages = [
            'terms_and_condition.required' => trans('admin_validation.Terms and condition is required')
        ];
        $this->validate($request, $rules,$customMessages);

        $termsAndCondition->terms_and_condition = $request->terms_and_condition;
        $termsAndCondition->save();

        $notification = trans('admin_validation.Update Successfully');
        return response()->json(['message' => $notification], 200);
    }



}

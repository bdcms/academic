<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserLoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [ 
            'login_email'=>        'required|exists:tbl_profiles,email|email',
            'login_pass'=>        'required|min:6'
        ];
        return $rules;
    }

    public function messages(){
       return [ 
        'login_email.required' =>'Please insert login email.',
        'login_email.exists'   =>'Email address not found.',
        'login_pass.size'      =>'Password min 6 digits.'
         
       ]; 
    }
}

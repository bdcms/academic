<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SignupRequest extends FormRequest
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
            'fullname'      => 'required',
            'email'         => 'required|email|unique:tbl_profiles,email',
            'password'      => 'required|required_with:repassword|same:repassword',
            'repassword'    => 'required|min:6',
            'contact'       => 'required|numeric', 
            'position'      => 'required',
            'dept_name'     => 'required',
            'birth_date'    => 'required',
            'last_institute'=> 'required',
            'token'         => 'required|exists:tbl_securitys,keyword',
            'image'         => 'required|mimes:jpeg,jpg,png'
        ];
        return $rules;
    }

    public function messages(){
       return [
        'fullname.required'     =>'Full name field required.',
        'email.required'        =>'Email name field required.',
        'email.email'           =>'This is not a valid email.',
        // 'email.unique'          => 'unique:connection.tbl_profiles,email',
        'birth_date.required'   =>'Birth date is required.',
        'dept_name.required'    =>'Depertment name is required.',
        'position.required'     =>'position name is required.',
        'contact.size'          =>'Depertment name is required.',
        'token.required'        =>'Must insert Token which provied you by NWU authority.' ,
        'token.exists'          =>'Invalid token Keyword.' 
         
        
       ]; 
    }
}

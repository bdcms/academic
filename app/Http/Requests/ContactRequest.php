<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactRequest extends FormRequest
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
            'name'          => 'required',
            'contact_num'   => 'required|numeric',
            'email'         => 'email',
            'body'          => 'required'
        ];
        return $rules;
    }

    public function messages(){
       return [
        'name.required'         =>'Name field required.',
        'email.required'        =>'Email name field required.',
        'body.required'      =>'Insert your text message.', 
        'contact_num.required'  =>'Number field required.', 
        'email.email'           =>'This is not a valid email.' 
         
        
       ]; 
    }
}

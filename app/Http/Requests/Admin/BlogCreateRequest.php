<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class BlogCreateRequest extends FormRequest
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
        return [
            'title' => 'required',
            'description' => 'required',
            'content' => 'required',
            'author' => 'required|max:50',
            'user_id' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'title.required' => 'Please Enter Title',
            'description.required' => 'Please Enter Description',
            'content.required' => 'Please Enter Content',
            'author.required' => 'Please Enter Author',
            'user_id.required' => 'Please Choose UserID',
        ];
    }
}

<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class TopicUpdateRequest extends FormRequest
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
            'topic_name' => 'required|max:50',
            'picture' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'topic_name.required' => 'Please Enter Topic Name',
            'picture.required' => 'Please Choose Picture',
        ];
    }
}

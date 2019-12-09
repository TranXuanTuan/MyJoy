<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class EventCreateRequest extends FormRequest
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
            'event_place' => 'required',
            'event_date' => 'required',
            'content' => 'required',
            'user_id' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'title.required' => 'Please Enter title',
            'event_place.required' => 'Please enter place',
            'event_date.required' => 'Please choose date',
            'content.required' => 'Please Enter content',
            'user_id.required' => 'Please Enter Creator',
        ];
    }
}

<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class SongCategoryUpdateRequest extends FormRequest
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
            'category_name' => 'required|max:50',
            'topic_id' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'category_name.required' => 'Please Enter Category',
            'topic_id.required' => 'Please Choose Topic',
        ];
    }
}

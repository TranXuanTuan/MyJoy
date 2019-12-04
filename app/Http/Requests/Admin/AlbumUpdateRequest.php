<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class AlbumUpdateRequest extends FormRequest
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
            'album_name' => 'required | max:100',
            'thumb' => 'required',
            'category_id' => 'required',
            'artist_id' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'album_name.required' => 'Please enter album name',
            'thumb.required' => 'Please choose thumb',
            'category_id.required' => 'Please choose category',
            'artist_id.required' => 'Please choose artist',
        ];
    }
}

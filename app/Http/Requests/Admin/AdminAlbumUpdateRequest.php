<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class AdminAlbumUpdateRequest extends FormRequest
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
            'album_name' => 'required',
            'thumb' => 'required',
            'category_id' => 'required',
            'artist_id' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'album_name.required' => 'Please Enter Album Name',
            'thumb.required' => 'Please Choose Thumb',
            'category_id.required' => 'Please Choose Category ID',
            'artist_id.required' => 'Please Choose Artist ID',
            
        ];
    }
}

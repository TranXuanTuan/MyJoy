<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class SongUpdateRequest extends FormRequest
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
            'song_name' => 'required|max:50',
            'artist_id' => 'required',
            'category_id' => 'required',
            'song_lyric' => 'required',
            'composer' => 'required|max:50',
            'url' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'song_name.required' => 'Please Enter Song Name',
            'artist_id.required' => 'Please Choose Artist',
            'category_id.required' => 'Please Choose Category',
            'song_lyric.required' => 'Please Enter Lyric',
            'composer.required' => 'Please Enter Composer',
            'url.required' => 'Please Choose URl',
        ];
    }
}

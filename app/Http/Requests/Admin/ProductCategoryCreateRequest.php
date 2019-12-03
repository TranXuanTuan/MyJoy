<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class ProductCategoryCreateRequest extends FormRequest
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
            'product_name' => 'required|max:50',
            'picture' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'product_name.required' => 'Please Enter Product Name',
            'picture.required' => 'Please Choose Picture',
        ];
    }
}

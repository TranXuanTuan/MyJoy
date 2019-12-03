<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class AdminProductCreateRequest extends FormRequest
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
            'name_product' => 'required',
            'description' => 'required',
            'category_id' => 'required',
            'unit' => 'required',
            'price' => 'required',
            'picture' => 'required',
        ];
    }

    public function messages ()
    {
        return [
            'name_product.required' => 'Please Enter Name',
            'description.required' => 'Please Enter Description',
            'unit.required' => 'Please Choose Unit',
            'price.required' => 'Please Enter Price',
            'category_id.required' => 'Please Choose CategoryID',
            'picture.required' => 'Please Choose Picture',
        ];
    }
}

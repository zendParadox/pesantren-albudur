<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class CostRequest extends FormRequest
{
    public $validator = null;

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
            'spp' => 'required|numeric|min:1|max:2147483647', // Adjust max based on your database type
            'construction' => 'required|numeric|min:1|max:2147483647',
            'facilities' => 'required|numeric|min:1|max:2147483647',
            'wardrobe' => 'required|numeric|min:1|max:2147483647'
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        $this->validator = $validator;
    }
}

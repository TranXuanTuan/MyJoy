<?php

use Illuminate\Database\Seeder;

class ArtistCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
            ['category_name' => 'VietNam'],
            ['category_name' => 'US-UK'],
            ['category_name' => 'Korean'],
            ['category_name' => 'Japan'],
        ];

        DB::table('artist_categories')->insert($dataInsert);
    }
}

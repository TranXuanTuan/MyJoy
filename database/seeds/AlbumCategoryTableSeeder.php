<?php

use Illuminate\Database\Seeder;

class AlbumCategoryTableSeeder extends Seeder
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
            ['category_name' => 'Asian'],
            ['category_name' => 'Concert'],
        ];

        DB::table('album_categories')->insert($dataInsert);
    }
}

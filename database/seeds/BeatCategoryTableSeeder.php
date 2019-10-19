<?php

use Illuminate\Database\Seeder;

class BeatCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
            ['beat_name' => 'Young Music'],
            ['beat_name' => 'Belero'],
            ['beat_name' => 'R&B'],
            ['beat_name' => 'Rock'],
        ];

        DB::table('beat_categories')->insert($dataInsert);
    }
}

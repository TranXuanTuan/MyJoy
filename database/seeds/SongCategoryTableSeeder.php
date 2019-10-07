<?php

use Illuminate\Database\Seeder;

class SongCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
        	['category_name' => 'V-pop highlights'],
        	['category_name' => 'K-pop highlights'],
        	['category_name' => 'US-UK highlights'],
        	['category_name' => 'C-Pop highlights'],
        	['category_name' => 'VietRap highlights'],
 		];

 		$subjects = DB::table('subjects')->select('id')->get();
 		foreach ($subjects as $subject) {
 			foreach($dataInsert as $data){
 				$data['subject_id'] = $subject->id;
 				DB::table('song_categories')->insert($data);
 			}
 		}
    }
}

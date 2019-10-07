<?php

use Illuminate\Database\Seeder;

class ArtistTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
        	[
        		'artist_name' => 'Sơn Tùng MT-P',
        		'intro' => 'Tiểu Dragon',
        	],
        	[
        		'artist_name' => 'G-Dragon',
        		'intro' => 'Big Dragon',
        	],
        	[
        		'artist_name' => 'Soobin Hoàng Sơn',
        		'intro' => 'Tiểu Sếp',
        	],
        	[
        		'artist_name' => 'Jack',
        		'intro' => 'Zẻ Jack',
        	],
        	[
        		'artist_name' => 'Đạt G',
        		'intro' => 'Nấu Ăng và Khó Khăng',
        	],
 		];

 		$artist_categories = DB::table('artist_categories')->select('id')->get();
 		foreach ($artist_categories as $artist_category) {
 			foreach($dataInsert as $data){
 				$data['category_id'] = $artist_category->id;
 				DB::table('artists')->insert($data);
 			}
 		}
    }
}

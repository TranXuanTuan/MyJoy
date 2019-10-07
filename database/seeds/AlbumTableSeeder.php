<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AlbumTableSeeder extends Seeder
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
        		'album_name' => 'Thành Phố Buồn',
        		'description' => 'Nhớ Không Em',
        	],
        	[
        		'album_name' => 'Cơn mưa ngang qua',
        		'description' => 'Tiểu Dragon',
        	],
        	[
        		'album_name' => 'Hãy Trao Cho Anh',
        		'description' => 'Tiểu Dragon',
        	],
        	[
        		'album_name' => 'Hết Thương Cạn Nhớ',
        		'description' => 'Tiểu Dragon',
        	],
        	[
        		'album_name' => 'Là Bạn Không Thể Quên',
        		'description' => 'Tiểu Dragon',
        	],
 		];

 		$album_category = DB::table('album_categories')->first();
 		$artists = DB::table('artists')->get();

 		foreach ($artists as $artist) 
 		{
 			foreach($dataInsert as $data)
 			{
        		$data['category_id'] = $album_category->id;
        		$data['artist_id'] = $artist->id;
 				DB::table('albums')->insert($data);
 			}
 		}
 	}
}

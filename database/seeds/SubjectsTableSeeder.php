<?php

use Illuminate\Database\Seeder;

class SubjectsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
            ['subject_name' => 'HOT'],
            ['subject_name' => 'HIT'],
            ['subject_name' => 'K-Pop HIT'],
            ['subject_name' => 'EDM'],
            ['subject_name' => 'Acoustic'],
            ['subject_name' => 'Indie'],
            ['subject_name' => 'Bolero'],
            ['subject_name' => 'Love'],
            ['subject_name' => 'Party'],
            ['subject_name' => 'Travel'],
            ['subject_name' => 'Vietnamese music']
        ];

        DB::table('subjects')->insert($dataInsert);
    }
}

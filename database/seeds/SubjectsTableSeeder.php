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
            ['subject_name' => 'Hot'],
            ['subject_name' => 'Hit'],
            ['subject_name' => 'K-Pop Hit'],
            ['subject_name' => 'EDM'],
            ['subject_name' => 'Acoustic'],
            ['subject_name' => 'Indie'],
            ['subject_name' => 'Bolero'],
            ['subject_name' => 'Love'],
            ['subject_name' => 'Party'],
            ['subject_name' => 'Travel'],
            ['subject_name' => 'Relax'],
            ['subject_name' => 'V-Pop Hit']
        ];

        DB::table('subjects')->insert($dataInsert);
    }
}

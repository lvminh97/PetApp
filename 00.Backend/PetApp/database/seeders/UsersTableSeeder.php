<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       DB::table('users')->insert(
           ['fname'=>'Binh',
            'lname'=>'Nguyen Thanh',
            'name'=>'Nguyen Thanh Binh',
            'image'=>'avt.png',
            'email'=>'binhnt.it28@gmail.com',
            'phone'=>'0395342134',
            'password'=>bcrypt('admin'),
            'status'=>1,
            'role'=>1,
           ]
       );
    }
}

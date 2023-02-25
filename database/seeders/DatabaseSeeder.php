<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Link;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

         $user = \App\Models\User::factory()->create([
             'name' => 'Test User 1',
             'email' => 'test@example.com',
         ]);

         $user2 = \App\Models\User::factory()->create([
             'name' => 'Test User 2',
             'email' => 'test2@example.com',
         ]);

         Link::query()->create([
             'title' => 'Comunidade devPT',
             'url' => 'https://devpt.co',
             'user_id' => $user->id,
             'description' => 'A comunidade de desenvolvedores portugueses',
         ]);

         Link::query()->create([
             'title' => 'Github',
             'url' => 'https://github.com',
             'user_id' => $user2->id,
             'description' => 'The most popular code repository',
         ]);

    }
}

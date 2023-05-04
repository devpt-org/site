<?php

namespace Tests\Feature\Http\Controllers;

use Tests\TestCase;
use App\Models\Link;
use App\Models\User;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class LinkControllerTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Should list links in an Inertia page coming from the database.
     *
     * @return void
     */
    public function test_should_list_links()
    {
        $user = User::factory()->create();
        Link::factory()->create(['user_id' => $user->id]);
        Link::factory()->create(['user_id' => $user->id]);

        $this->actingAs($user);
        
        $this->assertDatabaseCount('links', 2);

        $this->get('/links')
            ->assertInertia(fn ($page) => $page
                ->component('Links/Index')
                ->has('links', 2)
            );
    }
}
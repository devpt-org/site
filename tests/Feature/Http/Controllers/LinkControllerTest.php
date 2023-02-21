<?php

namespace Tests\Feature\Http\Controllers;

use Tests\TestCase;
use App\Models\User;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class LinkControllerTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Should add a link to the database.
     *
     * @return void
     */
    public function test_should_add_link_to_database()
    {
        $user = User::factory()->create();

        $this->actingAs($user);

        $this->assertDatabaseCount('links', 0);

        $response = $this->post(route('links.store'), [
            'title' => 'Comunidade devPT',
            'url' => 'https://devpt.co',
            'description' => 'A comunidade de desenvolvedores portugueses',
        ]);

        $this->assertDatabaseCount('links', 1);
        $response->assertStatus(302);
    }
}

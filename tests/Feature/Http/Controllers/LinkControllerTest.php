<?php

use Inertia\Testing\AssertableInertia;
use function Pest\Laravel\get;

it('properly displays 8 links on Links page', function () {
    $user = user()->create();

    links()->count(10)->create(['user_id' => $user->id]);
    
    actingAs($user)
        ->get(route('links.index'))
        ->AssertOK()
        ->assertDontSee('@inertia')
        ->assertInertia(fn (AssertableInertia $page) => $page
            ->component('Links/Index')
            ->has('links', 8)
        );
});

test('guests cannot list links', function () {
    get(route('links.index'))
        ->assertStatus(302)
        ->assertRedirect(route('login'));
});

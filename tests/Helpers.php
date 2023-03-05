<?php

use Tests\TestCase;
use App\Models\User;
use Database\Factories\{LinkFactory, UserFactory};

/*
|--------------------------------------------------------------------------
| Functions
|--------------------------------------------------------------------------
|
| While Pest is very powerful out-of-the-box, you may have some testing code specific to your
| project that you don't want to repeat in every file. Here you can also expose helpers as
| global functions to help you to reduce the number of lines of code in your test files.
|
*/

function actingAs(User $user, string $driver = null): TestCase
{
    return test()->actingAs($user, $driver);
}

/** User Factory */
function user(): UserFactory
{
    return UserFactory::new();
}

/** LinkFactory Factory */
function links(): LinkFactory
{
    return LinkFactory::new();
}
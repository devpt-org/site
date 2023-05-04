<?php

namespace App\Http\Controllers;

use App\Models\Link;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class LinkController extends Controller
{
    public function index()
    {
        $links = Link::query()
            ->take(8)
            ->latest()
            ->get();

        return inertia('Links/Index', [
            'links' => $links,
        ]);
    }
}

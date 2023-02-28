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

    public function create() {
        return inertia('Links/Create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'url' => 'required|url',
        ]);

        Link::create([
            'user_id' => auth()->id(),
            'title' => $request->title,
            'description' => $request->description,
            'url' => $request->url,
        ]);

        return Redirect::route('links.index');
    }
}

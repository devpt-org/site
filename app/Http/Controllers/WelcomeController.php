<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Application;

class WelcomeController extends Controller
{
    public function index()
    {
        //Todo: De momento é estatico, como POC
        $benefits = [
          [
              "type" => "text",
              "title"=> "Social",
              "text"=> "Facilitar a socialização e troca de experiência de developers e similares portugueses ou a residir em território nacional.",
          ],
            [
                "type" => "text",
                "title"=> "Open-Source",
                "text"=> "Criação de projetos e ferramentas utilitárias open-source e de fins não lucrativos de forma a facilitar e organizar o acesso a dados públicos.",
            ],
            [
                "type" => "text",
                "title"=> "Progressão de carreira",
                "text"=> "Fomentar a partilha de oportunidades de colaboração, emprego e discussão sobre carreiras.",
            ],
            [
                "type" => "image",
                "url" => asset('resources/hiking.svg'),
                "class" => "w-40 mx-auto",
            ],
            [
                "type" => "image",
                "url" => asset("resources/nature.svg"),
                "class" => "w-40 md:w-auto hidden md:block mx-auto",
            ],
            [
                "type" => "text",
                "title"=> "Meetups",
                "text"=> "Juntar os developers em meetups online a cada mês para promover a troca de experiência em contexto mais próximo.",
            ],
            [
                "type" => "text",
                "title"=> "All-Around Dev",
                "text"=> "Abranger todo o tipo de desenvolvimento, seja Web, Mobile, IoT ou Game Dev.",
            ],
            [
                "type" => "text",
                "title"=> "Showcase",
                "text"=> "Ajudar à partilha de projetos de índole pessoal.",
            ],
        ];
        return Inertia::render('Welcome', [
            'benefits' => $benefits,
        ]);
    }
}

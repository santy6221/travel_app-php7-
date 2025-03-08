<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class WeatherService {

    protected $apiKey;
    protected $apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

    public function __construct() {
        $this->apiKey = config('services.openweathermap.key');
    }

    public function getWeather($city) {
        
        $response = Http::get($this->apiUrl, [
            'q' => $city,
            'appid' => $this->apiKey,
            'units' => 'metric'
        ]);

        if($response->failed()) {
            throw new \Exception('Error al obtener respuesta del clima' . $response->body());
        }

        return $response->json();
    }
}
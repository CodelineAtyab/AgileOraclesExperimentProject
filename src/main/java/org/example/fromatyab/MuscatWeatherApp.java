package org.example.fromatyab;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;

/**
 * A simple weather application that fetches and displays current weather for Muscat.
 * This program demonstrates how to use popular Java libraries for HTTP requests and JSON parsing.
 * 
 * Real-world analogy: Think of this like ordering food delivery -
 * you send a request (OkHttp), get a response with details (JSON), and read the information (Gson).
 * 
 * Libraries used:
 * - OkHttp: Makes HTTP requests simple (like Python's 'requests' library)
 * - Gson: Parses JSON data easily (converts text to Java objects)
 */
public class MuscatWeatherApp {
    
    // Free weather API for Muscat (Open-Meteo - no API key needed!)
    // Latitude and longitude for Muscat, Oman
    private static final String WEATHER_API_URL = 
        "https://api.open-meteo.com/v1/forecast?latitude=23.588&longitude=58.3829&current_weather=true";
    
    /**
     * Main method to run the weather application.
     * 
     * @param args command line arguments (not used)
     */
    public static void main(String[] args) {
        System.out.println("=== Muscat Weather Application ===\n");
        
        try {
            String weatherJson = fetchWeatherData();
            displayWeather(weatherJson);
        } catch (IOException e) {
            System.out.println("Error fetching weather data: " + e.getMessage());
            System.out.println("\nTip: Make sure you have an internet connection!");
        }
    }
    
    /**
     * Fetches weather data from the API using OkHttp.
     * 
     * Real-world analogy: This is like sending a text message to a weather service
     * and waiting for their reply with the weather information.
     * 
     * @return weather data as a JSON string
     * @throws IOException if the request fails
     */
    private static String fetchWeatherData() throws IOException {
        // Step 1: Create an HTTP client (like installing a web browser)
        OkHttpClient client = new OkHttpClient();
        
        // Step 2: Build the request (like typing a website URL)
        Request request = new Request.Builder()
            .url(WEATHER_API_URL)
            .build();
        
        // Step 3: Execute the request and get response (like clicking "Go" in the browser)
        try (Response response = client.newCall(request).execute()) {
            
            // Step 4: Check if the request was successful
            if (!response.isSuccessful()) {
                throw new IOException("Unexpected response code: " + response);
            }
            
            // Step 5: Return the response body as a string
            return response.body().string();
        }
    }
    
    /**
     * Displays the weather data by parsing JSON and showing it in a readable format.
     * 
     * Real-world analogy: This is like reading a receipt -
     * the receipt has structured information (JSON), and we extract what we need.
     * 
     * @param weatherJson the weather information in JSON format
     */
    private static void displayWeather(String weatherJson) {
        // Step 1: Print the raw JSON response
        System.out.println("Raw JSON Response:");
        System.out.println(weatherJson);
        System.out.println("\n" + "=".repeat(60) + "\n");
            
        // Step 2: Parse the JSON using Gson (convert text to Java object)
        Gson gson = new Gson();
        JsonObject jsonObject = gson.fromJson(weatherJson, JsonObject.class);
        
        // Step 3: Extract specific data from the JSON
        JsonObject currentWeather = jsonObject.getAsJsonObject("current_weather");
        double temperature = currentWeather.get("temperature").getAsDouble();
        double windSpeed = currentWeather.get("windspeed").getAsDouble();
        String time = currentWeather.get("time").getAsString();


        
        // Step 4: Display the parsed data in a user-friendly way
        System.out.println("Formatted Weather Information:");
        System.out.println("Location: Muscat, Oman");
        System.out.println("Time: " + time);
        System.out.println("Temperature: " + temperature + "°C");
        System.out.println("Wind Speed: " + windSpeed + " km/h");
        System.out.println("\n" + "=".repeat(60));
        System.out.println("Data source: Open-Meteo API (free weather data)");
        System.out.println("Libraries: OkHttp (HTTP client) + Gson (JSON parser)");


        
    }
}

package org.example.fromyarab;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class WeatherApi {
    public static void main(String[] args) throws Exception {
        String url = "https://api.open-meteo.com/v1/forecast?latitude=35&longitude=139&current_weather=true";

        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .GET()
                .build();

        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        String json = response.body();

        int weatherStart = json.indexOf("\"current_weather\":");
        String weatherJson = json.substring(weatherStart);

        String time = extractValue(weatherJson, "time");
        String temperature = extractValue(weatherJson, "temperature");
        String windspeed = extractValue(weatherJson, "windspeed");
        String weathercode = extractValue(weatherJson, "weathercode");

        System.out.println("Tokyo Weather");
        System.out.println("Time: " + time);
        System.out.println("Temperature: " + temperature + "°C");
        System.out.println("Wind Speed: " + windspeed + " km/h");
        System.out.println("Weather Code: " + weathercode);
    }

    private static String extractValue(String json, String key) {
        int keyIndex = json.indexOf("\"" + key + "\"");
        if (keyIndex == -1) return "N/A";
        int colonIndex = json.indexOf(":", keyIndex);
        int start = colonIndex + 1;
        while (start < json.length() && json.charAt(start) == ' ') start++;
        if (json.charAt(start) == '"') {
            start++;
            int end = json.indexOf("\"", start);
            return json.substring(start, end);
        } else {
            int end = start;
            while (end < json.length() && (Character.isDigit(json.charAt(end)) || json.charAt(end) == '.' || json.charAt(end) == '-')) end++;
            return json.substring(start, end);
        }
    }
}

package org.example.fromabdullahalhadabi;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

public class WeatherAPISnippet {
    public static void main(String[] args) throws Exception {

        String urlString = urlString = "https://api.open-meteo.com/v1/forecast"
                + "?latitude=23.5880&longitude=58.3829&current_weather=true";

        URL url = new URL(urlString);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        connection.setRequestProperty("Content-Type", "application/json");

        int statusCode = connection.getResponseCode();
        System.out.println("Status Code: " + statusCode);

        if (statusCode == 200) {
            Scanner scanner = new Scanner(connection.getInputStream());
            StringBuilder response = new StringBuilder();
            while (scanner.hasNextLine()) {
                response.append(scanner.nextLine());
            }
            scanner.close();
            System.out.println(response.toString());
        } else {
            System.err.println("Request failed: " + statusCode);
        }
    }
}
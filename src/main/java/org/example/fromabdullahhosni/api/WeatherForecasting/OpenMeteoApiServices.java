package org.example.fromabdullahhosni.api.WeatherForecasting;

import kong.unirest.Unirest;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.json.JSONObject;

import java.time.LocalTime;


public class OpenMeteoApiServices {


    /*

///WHAT I WILL DO:


In this session, I will demonstrate the full lifecycle of consuming a REST API.
My objective is to retrieve real-time weather data for Tokyo from the
Open-Meteo public API.

I will move from manual verification in a GUI client to automated execution
in a Java environment. Specifically, I will:
- Establish a connection to a live endpoint.
- Analyze the structure of HTTP responses.
- Conduct error-handling tests.
- Implement a programmatic solution using the UniRest library.

//// STEP By Step

 * * I will use the Open-Meteo API to fetch real-time weather data for Tokyo.
 * To ensure manual control over the request, I will apply the following logic:
 * * 1. I will define the base URL for the Open-Meteo forecast endpoint.
 * 2. I will manually pass Tokyo's coordinates (35.6895, 139.6917) as query parameters.
 * 3. I will request specific metrics, focusing on 'temperature_2m' for current and hourly data.
 * 4. I will set the timezone to 'Asia/Tokyo' to ensure time accuracy.
 * 5. I will execute the GET request using Unirest and print the JSON response to the CLI.






    //// Results I got
        * *[API ENDPOINT]
        * * I will use: https://api.open-meteo.com/v1/forecast?latitude=35.6895&longitude=139.6917&current=temperature_2m&hourly=temperature_2m&timezone=Asia/Tokyo
        * * [PERFORMANCE]
        * * Status: 200 OK (Success)
        * * Response Time: 191 ms
        * * [JSON DATA SUMMARY]
        * * Location: Tokyo (35.7°N, 139.68°E)
        * * Current Temp: 17.8°C
        * * Timezone: Asia/Tokyo (GMT+9)


     */

    //the java Snippt
    public static void main(String[] args) {
        try {
            // This is the part you copy-paste from Postman
            Unirest.config().connectTimeout(0).socketTimeout(0);
            HttpResponse<JsonNode> response = Unirest.get("https://api.open-meteo.com/v1/forecast?latitude=35.6895&longitude=139.6917&current=temperature_2m&hourly=temperature_2m&timezone=Asia%2FTokyo")
                    .asJson();

            // Printing the result to the CLI
            if (response.getStatus() == 200) {
                JSONObject myObj = response.getBody().getObject();
            } else {
                System.out.println("Error: " + response.getStatusText());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

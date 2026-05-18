//package org.example.fromsaif.SPRINT7.TheWatchdogGuardian;

//import kong.unirest.HttpResponse;
//import kong.unirest.Unirest;
//
//public class WeatherApiClient {
//    public static void main(String[] args) {
//
//        Unirest.config().connectTimeout(0);
//        Unirest.config().socketTimeout(0);
//
//        while (true) {
//            HttpResponse<String> response = Unirest.get("https://api.open-meteo.com/v1/forecast?latitude=23.5880&longitude=58.3829&current_weather=true&timezone=Asia%2FMuscat")
//                    .header("Content-Type", "application/json")
//                    .asString();
//
//            if (response.getStatus() == 200) {
//                String body = response.getBody();
//
//                String currentWeather = body.split("\"current_weather\":")[1];
//                String temperature = currentWeather.split("\"temperature\":")[1]
//                        .split(",")[0];
//
//                System.out.println("Current temperature in Muscat: " + temperature + "°C");
//            } else {
//                System.err.println("Request failed with status: " + response.getStatus());
//                System.err.println(response.getBody());
//            }
//
//            try {
//                Thread.sleep(60000);
//            } catch (InterruptedException e) {
//                System.err.println("Weather app interrupted. Exiting...");
//                break;
//            }
//        }
//    }
//}

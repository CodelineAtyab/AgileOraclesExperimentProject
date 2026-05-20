//package org.example.fromsaif.SPRINT7.WeatherForecastApiWithPostman;
//
//import kong.unirest.HttpResponse;
//import kong.unirest.Unirest;
//
//public class WeatherApiClient {
//    public static void main(String[] args) {
//
//        Unirest.setTimeouts(0, 0);
//
//        HttpResponse<String> response = Unirest.get("https://api.open-meteo.com/v1/forecast?latitude=23.5880&longitude=58.3829&current_weather=true&timezone=Asia%2FMuscat")
//                .header("Content-Type", "application/json")
//                .asString();
//
//        if (response.getStatus() == 200) {
//            System.out.println("Request successful!");
//            System.out.println(response.getBody());
//        } else {
//            System.err.println("Request failed with status: " + response.getStatus());
//            System.err.println(response.getBody());
//        }
//    }
//}

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.nio.file.Paths;
import java.nio.file.Files;

public class MuscatWeather {
private static final String LOG_FILE = System.getProperty("user.home") + "/weather-project/logs/weather.log";

public static void main(String[] args) {
System.out.println(":mostly_sunny: Muscat Weather App Started");

try {
Files.createDirectories(Paths.get(System.getProperty("user.home") + "/weather-project/logs"));
} catch (IOException e) {
System.err.println("Could not create logs directory");
}

while (true) {
try {
String weather = getMuscatWeather();
logWeather(weather);
Thread.sleep(60000);
} catch (InterruptedException e) {
break;
} catch (Exception e) {
System.err.println(":x: CRASH: " + e.getMessage());
System.exit(1);
}
}
}

private static String getMuscatWeather() {
String[] conditions = {":sunny: Sunny", ":partly_sunny: Partly Cloudy", ":fire: Hot", ":dash: Humid"};
int temp = 30 + (int)(Math.random() * 15);
String condition = conditions[(int)(Math.random() * conditions.length)];
return String.format("%d°C, %s", temp, condition);
}

private static String getTimestamp() {
return LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
}

private static void logWeather(String weather) {
String timestamp = getTimestamp();
String logEntry = String.format("[%s] Muscat Weather: %s", timestamp, weather);
System.out.println(logEntry);

try (PrintWriter out = new PrintWriter(new FileWriter(LOG_FILE, true))) {
out.println(logEntry);
} catch (IOException e) {
System.err.println("Failed to write to log");
}
}
}

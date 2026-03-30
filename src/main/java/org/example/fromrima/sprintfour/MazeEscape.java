package org.example.fromrima.sprintfour;
import java.io.*;

public class MazeEscape {
    public static void main(String[] args) throws InterruptedException {
        String fileName = "textMazeFile.txt";

        // Try-with-resources ensures the stream is closed automatically
        try {
            BufferedReader reader = new BufferedReader(new FileReader(fileName));

            String line;

            // Read and print line by line
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }

            reader.close();

        } catch (IOException e) {
            System.out.println("Error: Unable to read the file.");
            System.out.println("Details: " + e.getMessage());
        }
    }
}
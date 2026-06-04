package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Scanner;

public class SimpleFileManager {
    public static void main(String[] args) {
        try {
            complainDataPath = Path.of(SimpleFileManager.class.getResource("./data/complain_data.txt").toURI());

            // Printing Existing Complains
            ArrayList<String> complains = loadComplainsFromFile();

            // Print existing complains
            complains.forEach(System.out::println);

            // Taking new Complains
            Scanner inpBuffer = new Scanner(System.in);
            String userInput = "";

            while(!userInput.equals("exit")) {
                userInput = inpBuffer.nextLine();
                if (!userInput.equals("exit"))
                    writeComplainToFile(userInput);
            }
        } catch (URISyntaxException e) {

        }
    }

    public static void writeComplainToFile(String message) {
        try {
            Files.writeString(complainDataPath, message + "\n", StandardOpenOption.APPEND);
        } catch (IOException e) {
            System.out.println("Unable to write the the file");
        }
    }

    public static ArrayList<String> loadComplainsFromFile() {
        ArrayList<String> existingComplains = new ArrayList<>();

        try {
            String fileContent = Files.readString(complainDataPath);
            String[] linesOfFile = fileContent.split("\n");

            for (String currLine: linesOfFile) {
                existingComplains.add(currLine);
            }
        } catch (IOException e) {
            System.out.println("Unable to write the the file");
        }

        return existingComplains;
    }

    public static Path complainDataPath = null;
}

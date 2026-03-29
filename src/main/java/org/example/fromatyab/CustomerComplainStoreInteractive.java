package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.*;

public class CustomerComplainStoreInteractive {
    public static void main(String[] args) {
        // Declare
        Path complainDataFilePath = null;
        Scanner inpBuffer = new Scanner(System.in);
        boolean showMainMenu = true;
        HashMap<String, String> complainData = new HashMap<>();

        // Load the existing complaints
        try {
            complainDataFilePath = Path.of(SimpleFileManager.class.getResource("./data/complain_data.csv").toURI());

            List<String> csvDataRecords = Files.readAllLines(complainDataFilePath);

            for (String currRecord: csvDataRecords) {
                String[] complainTextRecord = currRecord.split(",");
                String complainID = complainTextRecord[0];
                String complain = complainTextRecord[1];

                complainData.put(complainID, complain);
            }
        } catch (URISyntaxException | IOException e) {
            throw new RuntimeException(e);
        }

        // Take Input
        while (showMainMenu) {
            System.out.println("\nPlease select one of the following:");
            System.out.println("1. Register Complain");
            System.out.println("2. View All Complains");
            System.out.println("3. View Existing Complain");
            System.out.println(".. Type 'exit' to exit!");
            System.out.print("Your Selection: ");
            String userSelection = inpBuffer.nextLine();

            System.out.printf("You selected %s \n", userSelection);
            if (userSelection.equals("1")) {
                System.out.print("Please enter your complain: ");
                String newComplain = inpBuffer.nextLine();
                String newComplainID = UUID.randomUUID().toString();

                // Add a new complaint entry to the HashMap
                complainData.put(newComplainID, newComplain);

                // Store the complaint entry to persistent storage so it doesn't disappear when the program exists
                try {
                    Files.writeString(complainDataFilePath, newComplainID + "," + newComplain + "\n", StandardOpenOption.APPEND);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }

                // Notification
                System.out.print("Complain registered successfully!");
            } else if (userSelection.equals("2")) {
                for (String currComplainID: complainData.keySet()) {
                    String currComplain = complainData.get(currComplainID);
                    System.out.printf("[%s]. %s\n", currComplainID, currComplain);
                }
            } else if (userSelection.equals("3")) {
                System.out.print("Please enter complain ID: ");
                String existingComplainID = inpBuffer.nextLine();
                String existingComplain = complainData.get(existingComplainID);
                System.out.printf("[%s]. %s\n", existingComplainID, existingComplain);
            } else if (userSelection.equals("exit")) {
                showMainMenu = false;
            } else {
                System.out.println("Invalid Selection!");
            }
        }
    }
}

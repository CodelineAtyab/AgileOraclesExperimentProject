package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;
import java.util.UUID;

public class CustomerComplainStoreNonInteractive {
    public static void main(String[] args) {
        // Declare
        Path complainDataFilePath = null;
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

        // Take Input from External Arguments
        String action = "";
        String externalData = "";
        if (args.length == 0) {
            System.out.println("\n[Usage] CustomerComplainNonInteractive.java <action> <data: optional>");
            System.out.println("Valid actions are:");
            System.out.println("register <complain>");
            System.out.println("viewSpecific <complainID>");
            System.out.println("viewAll");
        } else  {
            action = args[0];
            if (args.length > 1) {
                externalData = args[1];
            }

            System.out.print("Your Selection: ");
            String userSelection = action;

            System.out.printf("You selected %s \n", userSelection);
            if (userSelection.equals("register")) {
                System.out.print("Please enter your complain: ");
                String newComplain = externalData;
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
            } else if (userSelection.equals("viewAll")) {
                for (String currComplainID: complainData.keySet()) {
                    String currComplain = complainData.get(currComplainID);
                    System.out.printf("[%s]. %s\n", currComplainID, currComplain);
                }
            } else if (userSelection.equals("viewSpecific")) {
                System.out.print("Please enter complain ID: ");
                String existingComplainID = externalData;
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

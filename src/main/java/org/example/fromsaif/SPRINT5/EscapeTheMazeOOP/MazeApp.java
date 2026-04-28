package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

import java.io.IOException;

public class MazeApp {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Error: Please provide the correct file path.");
            return;
        }
        String mazeFilePath = args[0];
    }
}

package org.example.fromsaif.SPRINT5;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class EscapeTheMaze {
    // CLI Argument
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Error: Please provide the correct file path.");
            return;
        }
        // Handling command-line arguments
        String mazeFilePath = args[0];
        // Load the file
        try {
            Path path = Path.of(mazeFilePath); // Creates a file path object (path handling)
            List<String> lines = Files.readAllLines(path); // File Reading
            System.out.println("Maze file was read successfully.");
            System.out.println(lines);

            char[][] maze = new char[lines.size()][];
            for (int i = 0; i < lines.size(); i++) {
                maze[i] = lines.get(i).toCharArray(); // Convert one text row into one maze row
            }

            } catch(IOException e){
                System.out.println("Error: file could not be read.");
            }
        }
    }



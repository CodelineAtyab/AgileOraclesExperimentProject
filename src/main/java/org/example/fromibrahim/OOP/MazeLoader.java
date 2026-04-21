package org.example.fromibrahim.OOP;

// Import required classes
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class MazeLoader {

    // Method to load maze from file
    public Maze load(String filePath) throws FileNotFoundException {

        // List to store all valid (non-empty) lines from the file
        ArrayList<String> lines = getStrings(filePath);

        // Get number of rows and columns
        int rows = lines.size();
        int cols = lines.get(0).length();

        // Counters for start '@' and exit 'E'
        int startCount = 0;
        int exitCount = 0;

        // Create grid to store maze
        char[][] grid = new char[rows][cols];

        // Variables to store positions of start and exit
        Position start = null;
        Position exit = null;

        for (int r = 0; r < rows; r++) {

            // Ensure all rows have same length
            if (lines.get(r).length() != cols) {
                throw new RuntimeException("Error: Rows are not equal length.");
            }

            for (int c = 0; c < cols; c++) {

                char ch = lines.get(r).charAt(c); // get each character

                // Validate allowed characters only
                if (ch != '1' && ch != '0' && ch != '@' && ch != 'E') {
                    throw new RuntimeException("Error: Invalid character in maze.");
                }

                // Store character in grid
                grid[r][c] = ch;

                // Count start position '@'
                if (ch == '@') {
                    startCount++;
                    start = new Position(r, c); // save its position
                }

                // Count exit position 'E'
                if (ch == 'E') {
                    exitCount++;
                    exit = new Position(r, c); // save its position
                }
            }
        }

        if (startCount != 1 || exitCount != 1) {
            throw new RuntimeException("Error: Maze must contain exactly one '@' and one 'E'.");
        }

        return new Maze(grid, start, exit);
    }

    private static ArrayList<String> getStrings(String filePath) throws FileNotFoundException {
        ArrayList<String> lines = new ArrayList<>();

        // Create file and scanner to read the file
        File file = new File(filePath);
        Scanner scanner = new Scanner(file);

        //  Reading the file
        while (scanner.hasNextLine()) {
            String line = scanner.nextLine().trim(); // remove spaces

            // Skip empty lines
            if (!line.isEmpty()) {
                lines.add(line);
            }
        }

        // Close scanner AFTER reading all lines
        scanner.close();

        if (lines.isEmpty()) {
            throw new RuntimeException("Error: Maze file is empty.");
        }
        return lines;
    }
}
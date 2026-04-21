package org.example.fromibrahim.OOP;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

/*
 * Reads a maze from a file, validates its structure and constraints,
 * and returns a fully constructed Maze object.
 *
 * SRP:        this class only handles I/O and validation — it does not solve or render.
 * Abstraction: callers simply call load() and receive a ready-to-use Maze;
 *              all file-reading and validation details are hidden inside private methods.
 */
public class MazeLoader {

    private final String filePath;

    public MazeLoader(String filePath) {
        this.filePath = filePath;
    }

    // Loads the maze from the file and returns a Maze object, or null on failure
    public Maze load() {

        //  Read the File Line By Line
        ArrayList<String> lines = new ArrayList<>();
        try {
            File file = new File(filePath);
            Scanner inputBuffer = new Scanner(file);

            while (inputBuffer.hasNextLine()) {
                String line = inputBuffer.nextLine().trim();
                //  This avoids adding blank lines
                if (!line.isEmpty()) {
                    lines.add(line);
                }
            }
            inputBuffer.close();

        } catch (FileNotFoundException e) {
            System.out.println("Error: File not found.");
            return null;
        }

        // Check if file is empty
        if (lines.isEmpty()) {
            System.out.println("Error: Maze file is empty.");
            return null;
        }

        //  Number of rows in the maze = number of lines
        int rows = lines.size();
        //  Number of columns = length of the first row
        int columns = lines.get(0).length();

        //  Validate row lengths and count special characters
        if (!validateLines(lines, rows, columns)) {
            return null;
        }

        //  Convert the list of lines into a 2D char array
        char[][] grid = buildGrid(lines, rows, columns);

        //  Validate border cells (must be '1', '@', or 'E')
        if (!validateBorders(grid, rows, columns)) {
            return null;
        }

        return new Maze(grid);
    }

    // Checks that every row is the same length and contains only valid characters,
    // and that there is exactly one '@' and one 'E'
    private boolean validateLines(ArrayList<String> lines, int rows, int columns) {

        //  This will count how many @ and E characters exist
        int startCount = 0;
        int exitCount = 0;

        for (int row = 0; row < rows; row++) {
            String line = lines.get(row);

            //  Checks if the current row length is different from the first row length
            if (line.length() != columns) {
                System.out.println("Error: Maze rows are not the same length.");
                return false;
            }

            for (int col = 0; col < columns; col++) {
                //  Gets one character from the current row
                char ch = line.charAt(col);

                if (ch != '1' && ch != '0' && ch != '@' && ch != 'E') {
                    System.out.println("Error: Invalid character found in maze.");
                    return false;
                }
                if (ch == '@') startCount++;
                if (ch == 'E') exitCount++;
            }
        }

        //  Checks whether there is exactly one start and one exit
        if (startCount != 1 || exitCount != 1) {
            System.out.println("Error: Maze must contain exactly one '@' and one 'E'.");
            return false;
        }

        return true;
    }

    // Converts the list of lines into a 2D char array
    private char[][] buildGrid(ArrayList<String> lines, int rows, int columns) {
        char[][] grid = new char[rows][columns];
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                grid[row][col] = lines.get(row).charAt(col);
            }
        }
        return grid;
    }

    // Validates that all border cells are walls '1', except '@' and 'E'
    private boolean validateBorders(char[][] grid, int rows, int columns) {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {

                //  This check if the current cell is on the border
                boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == columns - 1;

                if (isBorder) {
                    char ch = grid[row][col];
                    if (ch != '1' && ch != '@' && ch != 'E') {
                        System.out.println("Error: Border cells must be '1' except '@' and 'E'.");
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
package org.example.fromibrahim.oop.snake.move;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Scanner;

/*
 # Reads the map file line by line, validates it, and builds the GameMap and Snake.

 # Abstraction: callers just call readAndLoadMap() and get a GameMap and Snake back.
                All file-reading details are hidden inside private helper methods.

 # This class only handles file reading and validation.
 */
public class MapLoader {
    private final String filePath;
    // Stores the loaded map after a successful readAndLoadMap() call
    private GameMap gameMap;
    // Stores the loaded snake after a successful readAndLoadMap() call
    private Snake snake;

    public MapLoader(String filePath) {
        this.filePath = filePath;
    }
    // Reads the file, validates it, and builds the GameMap and Snake.
    // Returns true if everything was successful, false if any error was found.
    public boolean readAndLoadMap() { // ABSTRACTION: single method call hides file reading, parsing, validation

        ArrayList<String[]> rowsData = new ArrayList<>();
        // A variable to store the snake order line if it exists in the file
        String snakeOrderLine = null;

        File mapFile = new File(filePath);

        try {
            Scanner fileReader = new Scanner(mapFile);

            //  Looping as long as there is another line in the file
            while (fileReader.hasNextLine()) {
                //  Removes extra spaces at the beginning and end of the line
                String line = fileReader.nextLine().trim();
                // This checks if line is not empty
                if (!line.isEmpty()) {
                    // Check if this line is the snake order line (starts with "(")
                    // If yes, save it separately instead of adding it to the map rows
                    if (line.startsWith("(")) {
                        snakeOrderLine = line;
                    } else {
                        // Split lines by spaces for easy access to each cell
                        String[] parts = line.split(" ");
                        rowsData.add(parts);
                    }
                }
            }
            fileReader.close();

        } catch (FileNotFoundException e) {
            System.out.println("Error: map file not found.");
            return false;
        }

        //  Validate the map rows
        if (!validateMapRows(rowsData)) {
            return false;
        }

        //  Build the 2D char array from the row data
        char[][] map = buildMapGrid(rowsData);

        this.gameMap = new GameMap(map);

        //  Build the Snake using either the saved order line or a fresh scan
        this.snake = buildSnake(snakeOrderLine, rowsData.size(), rowsData.get(0).length, map);

        if (!snake.isSnakeFound()) {
            System.out.println("No snake found in map file!");
            return false;
        }

        return true;
    }

    // Checks row count, column consistency, minimum size, and valid characters
    private boolean validateMapRows(ArrayList<String[]> rowsData) {

        int rows = rowsData.size();
        if (rows == 0) {
            System.out.println("Error: Map file is empty.");
            return false;
        }

        int columns = rowsData.get(0).length;

        //  Check if n>=15
        if (rows < 15 || columns < 15) {
            System.out.println("Error: Map must be at least 15x15.");
            return false;
        }

        //  Check all rows are the same length
        for (int i = 0; i < rows; i++) {
            if (rowsData.get(i).length != columns) {
                System.out.println("Error: Invalid map format.");
                return false;
            }
        }

        //  Validate symbols, only '-' and 'o' are allowed
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                String cell = rowsData.get(row)[col];
                if (!cell.equals("-") && !cell.equals("o")) {
                    System.out.println("Error: Invalid symbol found in the map.");
                    return false;
                }
            }
        }

        return true;
    }

    // Converts the list of String arrays into a 2D char array
    private char[][] buildMapGrid(ArrayList<String[]> rowsData) {
        int rows = rowsData.size();
        int columns = rowsData.get(0).length;
        char[][] map = new char[rows][columns];
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                map[row][col] = rowsData.get(row)[col].charAt(0);
            }
        }
        return map;
    }

    // Builds the Snake using the saved order line if it exists,
    // otherwise scans the grid for 'o' cells (first run with no saved order)
    private Snake buildSnake(String snakeOrderLine, int rows, int columns, char[][] map) {
        LinkedList<Position> snakeBody = new LinkedList<>();

        if (snakeOrderLine != null) {
            // Each point looks like (row,col) and they are separated by spaces
            // For example: (2,3) (2,4) (2,5)
            String[] points = snakeOrderLine.split(" ");
            for (String point : points) {
                // Remove the "(" and ")" and split by ","
                point = point.replace("(", "").replace(")", "");
                String[] snakeLocation = point.split(",");
                int r = Integer.parseInt(snakeLocation[0].trim());
                int c = Integer.parseInt(snakeLocation[1].trim());
                snakeBody.add(new Position(r, c));
            }
        } else {
            // First time running: no order line exists yet, so fall back to
            // the original scan method to at least find the snake segments
            for (int row = 0; row < rows; row++) {
                for (int col = 0; col < columns; col++) {
                    if (map[row][col] == 'o') {
                        snakeBody.add(new Position(row, col));
                    }
                }
            }
        }

        return new Snake(snakeBody);
    }

    // Returns the loaded GameMap — only valid after a successful readAndLoadMap()
    public GameMap getGameMap() {
        return gameMap;
    }
    // Returns the loaded Snake, only valid after a successful readAndLoadMap()
    public Snake getSnake() {
        return snake;
    }
}

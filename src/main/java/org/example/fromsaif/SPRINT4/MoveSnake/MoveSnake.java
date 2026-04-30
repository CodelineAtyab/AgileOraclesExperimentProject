package org.example.fromsaif.SPRINT4.MoveSnake;

import java.nio.file.Files;
import java.nio.file.Path;
import java.io.IOException;
import java.util.List;
import java.util.LinkedList;

public class MoveSnake {
    // Store snake segment
    static class Position {
        int row;
        int col;

        // Reads the grid as coordinate positions / Stores snake position
        Position(int row, int col) {
            this.row = row;
            this.col = col;
        }

    }

    public static void main(String[] args) {

        // CLI INPUT VALIDATION
        try {
            if (args.length == 0) {
                System.out.println("Please provide movement option: up, down, left, right");
                return;
            }

            String direction = args[0].toLowerCase();

            // Validate Direction
            if (!direction.equals("up") &&
                    !direction.equals("down") &&
                    !direction.equals("left") &&
                    !direction.equals("right")) {

                System.out.println("Invalid Direction: Use (up, down, left, right)");
                return;

            }
            int steps = 1; // default movement
            if (args.length > 1) {
                try {
                    steps = Integer.parseInt(args[1]);
                } catch (NumberFormatException e) {
                    System.out.println("Invalid: Steps must be +ve");
                    return;
                }
                if (steps <= 0) {
                    System.out.println("Steps must be a positive integer");
                    return;
                }
            }

            // LOAD FILE
            // Using path path for easier reading and syntax understanding. BufferedReader <or> Scanner scanner
            Path path = Path.of("src/main/java/org/example/fromsaif/SPRINT4/map.txt");
            List<String> lines = Files.readAllLines(path);

            char[][] grid = new char[lines.size()][]; //Convert the file into 2D Array / Creates Grid

            for (int row = 0; row < lines.size(); row++) {
                //BREAK LINES INTO COLUMNS
                String line = lines.get(row);
                String[] parts = line.split(" ");
                grid[row] = new char[parts.length];

                for (int col = 0; col < parts.length; col++) {
                    grid[row][col] = parts[col].charAt(0); //Convert string to char
                }
            }

            // Creates linkedlist to store snake segment
            LinkedList<Position> snake = new LinkedList<>();

            //Scan the entire grid and collect all snake positions.
            List<Position> temp = new LinkedList<>();
            for (int row = 0; row < grid.length; row++) {
                for (int col = 0; col < grid[row].length; col++) {
                    if (grid[row][col] == 'o') {
                        snake.add(new Position(row, col));
                    }
                }
            }

            // PRINT THE SNAKE POSITION COORDINATES
            System.out.println("Snake position:");
            for (Position part : snake) {
                System.out.println("(" + part.row + ", " + part.col + ")");
            }

            // PRINT GRIDS INSTEAD OF LINES AFTER SCANNING
            System.out.println("Position on grid:");
            for (int row = 0; row < grid.length; row++) {
                for (int col = 0; col < grid[row].length; col++) {
                    System.out.print(grid[row][col] + " ");

                }
                System.out.println();
            }

            // PRINT THE SNAKE POSITION
            for (int i = 0; i < steps; i++) {
                Position head = snake.getLast();
                int newRow = head.row;
                int newCol = head.col;

                if (direction.equals("up")) {
                    newRow--;
                } else if (direction.equals("down")) {
                    newRow++;
                } else if (direction.equals("left")) {
                    newCol--;
                } else if (direction.equals("right")) {
                    newCol++;
                }

                // Checks Boundary
                if (newRow < 0 || newRow >= grid.length ||
                        newCol < 0 || newCol >= grid[0].length) {
                    System.out.println("Invalid move: Snake would go outside the grid");
                    return;
                }

                // Check Self Collusion
                for (int ii = 1; ii < snake.size(); ii++) {
                    Position part = snake.get(ii);

                    if (part.row == newRow && part.col == newCol) {
                        System.out.println("Invalid move: Snake would self collide");
                        return;
                    }
                }


                // Snake Movement
                snake.addLast(new Position(newRow, newCol)); // Adds new head
                snake.removeFirst(); // Removes Old tail

                for (Position part : snake) {
                    System.out.println("(" + part.row + ", " + part.col + ")");
                }
            }

            // Clear the grid
            for (int row = 0; row < grid.length; row++) {
                for (int col = 0; col < grid[row].length; col++) {
                    grid[row][col] = '-';
                }
            }

            // Draw updated snake position coordinates
            for (Position part : snake) {
                grid[part.row][part.col] = 'o';
            }

            // Print the grid of updated snake position
            System.out.println("New Position on Grid:");
            for (int row = 0; row < grid.length; row++) {
                for (int col = 0; col < grid[row].length; col++) {
                    System.out.print(grid[row][col] + " ");
                }
                System.out.println();

            }
            // Save the map

            List<String> updatedLines = new LinkedList<>();

            for (int row = 0; row < grid.length; row++){
                StringBuilder line = new StringBuilder ();

                for (int col = 0; col < grid[row].length; col++){
                    line.append(grid[row][col]);

                    if (col < grid[row].length - 1) {
                        line.append(" ");
                    }
                }
                updatedLines.add(line.toString());
            }
            Files.write(path, updatedLines);

        } catch(IOException e){
            System.out.println("Error reading the file");
            e.printStackTrace();
        }
    }
}


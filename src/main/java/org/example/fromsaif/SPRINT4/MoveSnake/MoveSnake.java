package org.example.fromsaif.SPRINT4.MoveSnake;

import java.nio.file.Files;
import java.nio.file.Path;
import java.io.IOException;
import java.util.List;
import java.util.LinkedList;
import java.util.ArrayList;

public class MoveSnake {

    // The map file stores what the player sees on the grid.
    private static final Path MAP_PATH = Path.of("src/main/java/org/example/fromsaif/SPRINT4/MoveSnake/map.txt");

    // The snake state file stores the snake body order from tail to head.
    // This is important because the map only stores 'o', but it does not know which 'o' is the head after the snake turns.
    private static final Path SNAKE_STATE_PATH = Path.of("src/main/java/org/example/fromsaif/SPRINT4/MoveSnake/snake_state.txt");

    // Store snake segment
    static class Position {
        int row;
        int col;

        // Reads the grid as coordinate positions / Stores snake position
        Position(int row, int col) {
            this.row = row;
            this.col = col;
        }

        // Converts this position into a text line that can be saved inside snake_state.txt.
        String toFileLine() {
            return row + "," + col;
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
            // MAP_PATH points to the map file used by this game.
            // read all lines from map.txt so we can convert them into a 2D grid.
            List<String> lines = Files.readAllLines(MAP_PATH);

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

            // Validates map size is 15x15
            if (grid.length < 15 || grid[0].length < 15) {
                System.out.println("Invalid map: map must be at least 15x15.");
                return;
            }

            // Creates a linked list to store the snake body in the correct order.
            // First item = tail, last item = head.
            // We use snake_state.txt for this because map.txt only stores 'o', not the order of the body.
            LinkedList<Position> snake = loadSnakeState(grid);

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

                // Checks boundary/wall collision.
                // If the new head position is outside the grid, the move is not allowed.
                if (newRow < 0 || newRow >= grid.length ||
                        newCol < 0 || newCol >= grid[0].length) {
                    System.out.println("Invalid move: Snake would go outside the grid");
                    printAllowedDirections(snake, grid);
                    return;
                }

                // Check self-collision.
                // Moving into the current tail position is allowed because the tail moves away during this same step.
                Position currentTail = snake.getFirst();
                boolean movingIntoTail = currentTail.row == newRow && currentTail.col == newCol;

                for (int ii = 1; ii < snake.size(); ii++) {
                    Position part = snake.get(ii);

                    if (part.row == newRow && part.col == newCol && !movingIntoTail) {
                        System.out.println("Invalid move: Snake would self collide");
                        printAllowedDirections(snake, grid);
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

            for (int row = 0; row < grid.length; row++) {
                StringBuilder line = new StringBuilder();

                for (int col = 0; col < grid[row].length; col++) {
                    line.append(grid[row][col]);

                    if (col < grid[row].length - 1) {
                        line.append(" ");
                    }
                }
                updatedLines.add(line.toString());
            }

            // Save the updated visual map back into map.txt.
            Files.write(MAP_PATH, updatedLines);

            // Save the correct snake order from tail to head.
            // This is what keeps movement correct after turns.
            saveSnakeState(snake);

        } catch (IOException e) {
            System.out.println("Error reading the file");
            e.printStackTrace();
        }
    }

    // Prints the directions that the snake can safely move to from its current head position.
    private static void printAllowedDirections(LinkedList<Position> snake, char[][] grid) {
        System.out.println("Allowed open directions:");

        boolean hasAllowedDirection = false;

        if (isMoveAllowed("up", snake, grid)) {
            System.out.println("- up");
            hasAllowedDirection = true;
        }

        if (isMoveAllowed("down", snake, grid)) {
            System.out.println("- down");
            hasAllowedDirection = true;
        }

        if (isMoveAllowed("left", snake, grid)) {
            System.out.println("- left");
            hasAllowedDirection = true;
        }

        if (isMoveAllowed("right", snake, grid)) {
            System.out.println("- right");
            hasAllowedDirection = true;
        }

        if (!hasAllowedDirection) {
            System.out.println("No safe moves available.");
        }
    }

    // Checks if one direction is safe before the snake actually moves.
    private static boolean isMoveAllowed(String direction, LinkedList<Position> snake, char[][] grid) {
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

        // A move is not allowed if it goes outside the grid.
        if (newRow < 0 || newRow >= grid.length || newCol < 0 || newCol >= grid[0].length) {
            return false;
        }

        // Moving into the current tail is allowed because the tail moves away during the same step.
        Position currentTail = snake.getFirst();
        boolean movingIntoTail = currentTail.row == newRow && currentTail.col == newCol;

        for (int i = 1; i < snake.size(); i++) {
            Position part = snake.get(i);

            if (part.row == newRow && part.col == newCol && !movingIntoTail) {
                return false;
            }
        }

        return true;
    }

    // Loads the snake body order.
    // If snake_state.txt exists, we trust it because it stores the real tail-to-head order.
    // If it does not exist yet, we create the first snake order from map.txt.
    private static LinkedList<Position> loadSnakeState(char[][] grid) throws IOException {
        if (Files.exists(SNAKE_STATE_PATH)) {
            return loadSnakeFromStateFile();
        }

        LinkedList<Position> snake = loadSnakeFromMap(grid);
        saveSnakeState(snake);
        return snake;
    }

    // Reads snake_state.txt and rebuilds the snake body from tail to head.
    private static LinkedList<Position> loadSnakeFromStateFile() throws IOException {
        LinkedList<Position> snake = new LinkedList<>();
        List<String> lines = Files.readAllLines(SNAKE_STATE_PATH);

        for (String line : lines) {
            String[] parts = line.split(",");

            int row = Integer.parseInt(parts[0]);
            int col = Integer.parseInt(parts[1]);

            snake.add(new Position(row, col));
        }

        return snake;
    }

    // Builds the first snake order from map.txt.
    // This is only used once before snake_state.txt exists.
    private static LinkedList<Position> loadSnakeFromMap(char[][] grid) {
        LinkedList<Position> snake = new LinkedList<>();

        for (int row = 0; row < grid.length; row++) {
            for (int col = 0; col < grid[row].length; col++) {
                if (grid[row][col] == 'o') {
                    snake.add(new Position(row, col));
                }
            }
        }

        return snake;
    }

    // Saves the snake body order from tail to head into snake_state.txt.
    private static void saveSnakeState(LinkedList<Position> snake) throws IOException {
        List<String> lines = new ArrayList<>();

        for (Position part : snake) {
            lines.add(part.toFileLine());
        }

        Files.write(SNAKE_STATE_PATH, lines);
    }
}
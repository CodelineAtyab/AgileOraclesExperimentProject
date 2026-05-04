package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.nio.file.Path;

public class SnakeGame {

    // Stores the visible game map.
    private static final Path MAP_PATH =
            Path.of("src/main/java/org/example/fromsaif/SPRINT5/CliSnakeMovementGameOOP/map.txt");

    // Stores the real snake body order from tail to head.
    private static final Path SNAKE_STATE_PATH =
            Path.of("src/main/java/org/example/fromsaif/SPRINT5/CliSnakeMovementGameOOP/snake_state.txt");

    public static void main(String[] args) {
        // The user must provide at least the direction.
        if (args.length < 1 || args.length > 2) {
            System.out.println("Usage: java SnakeGame <direction> <steps>");
            System.out.println("Example: java SnakeGame right 3");
            return;
        }

        try {
            Direction direction = new Direction(args[0]);
            int steps = 1;

            if (args.length == 2) {
                steps = parseSteps(args[1]);
            }

            System.out.println("Direction: " + direction.getValue());
            System.out.println("Steps: " + steps);

            // Create a helper that manages loading, saving, printing
            MapLoader mapLoader = new MapLoader();
            FilePersistence filePersistence = new FilePersistence();
            GameRenderer gameRenderer = new GameRenderer();

            // Load the map from map.txt and wrap it inside a GameMap object.
            GameMap gameMap = mapLoader.loadMap(MAP_PATH);

            // Load the snake using snake_state.txt when it exists.
            // If snake_state.txt does not exist yet, it scans the map once and creates it.
            Snake snake = filePersistence.loadSnake(gameMap, SNAKE_STATE_PATH);

            System.out.println("Current map:");
            gameRenderer.render(gameMap);

            // Movement logic one step at a time
            for (int step = 1; step <= steps; step++) {
                Position newHead = snake.calculateNewHead(direction);
                if (snake.hasCollision(newHead, gameMap)) {
                    System.out.println("Invalid move: Snake would collide.");
                    snake.printAllowedDirections(gameMap);
                    return;
                }

                snake.move(newHead, gameMap);
                System.out.println("After step " + step + ":");
                gameRenderer.render(gameMap);
            }

            filePersistence.saveMap(gameMap, MAP_PATH);
            filePersistence.saveSnakeState(snake, SNAKE_STATE_PATH);

        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // Converts the steps argument from text into a positive integer.
    private static int parseSteps(String input) {
        try {
            int steps = Integer.parseInt(input);
            if (steps <= 0) {
                throw new IllegalArgumentException("Steps must be a positive integer.");
            }
            return steps;
            }

        catch (NumberFormatException e) {
            throw new IllegalArgumentException("Steps must be a positive integer.");
        }
    }
}

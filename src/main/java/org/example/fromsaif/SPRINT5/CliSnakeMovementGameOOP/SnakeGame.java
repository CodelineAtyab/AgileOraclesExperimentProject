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
        System.out.println("CLI arguments received successfully.");
    }
}

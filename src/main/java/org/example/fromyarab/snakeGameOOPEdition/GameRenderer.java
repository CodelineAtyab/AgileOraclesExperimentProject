package org.example.fromyarab.snakeGameOOPEdition;

import java.util.List;

public class GameRenderer {
    public void render(GameMap map, Snake snake) {
        render(map, snake.getBody());
    }

    public void render(GameMap map, List<Position> snakeBody) {
        System.out.println("Current status is:");
        for (int i = 0; i < map.getRows(); i++) {
            for (int j = 0; j < map.getColumns(); j++) {
                Position pos = new Position(i, j);
                if (snakeBody.contains(pos)) {
                    System.out.print(GameMap.SNAKE_CELL + " ");
                } else {
                    System.out.print(GameMap.EMPTY_CELL + " ");
                }
            }
            System.out.println();
        }
    }

    public void renderSimple(GameMap map) {
        System.out.println("Current status is:");
        List<List<String>> grid = map.toList();
        for (List<String> row : grid) {
            for (String cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }

    public void printMessage(String message) {
        System.out.println(message);
    }

    public void printAvailableSteps(String direction, int steps) {
        System.out.printf("Available # of steps on %s direction is: %d steps%n", direction, steps);
    }

    public void printValidDirections(List<Direction> directions) {
        System.out.print("The only open directions are: ");
        for (Direction dir : directions) {
            System.out.print("(" + dir.name().toLowerCase() + ") ");
        }
        System.out.println();
    }

    public void printCollisionMessage(String message) {
        System.out.println(message);
    }

    public void printUsage() {
        System.out.println("[usage]");
        System.out.println("SnakeGame.java <direction> <step>");
        System.out.println("<direction> : (String) right, left, up, down");
        System.out.println("<steps>     : (Integer) positive number <not 0> (default 1)");
        System.out.println();
        System.out.println("[reset]");
        System.out.println("SnakeGame.java reset");
        System.out.println("default     : grid size 15*15");
        System.out.println("            : snake length 9");
        System.out.println("            : snake position center");
    }
}
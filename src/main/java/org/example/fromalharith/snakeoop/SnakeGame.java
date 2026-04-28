package org.example.fromalharith.snakeoop;

import java.io.File;

public class SnakeGame {

    public static void main(String[] args) throws Exception {

        if (args.length < 2) {
            System.out.println("Usage: java SnakeGame <direction> <steps>");
            return;
        }

        String mapPath = "src/main/java/org/example/fromalharith/snakeoop/board.txt";
        String statePath = "src/main/java/org/example/fromalharith/snakeoop/snakeState.txt";

        System.out.println("Running from: " + new File(".").getAbsolutePath());

        Snake snake = new Snake();

        // LOAD SAVED STATE FIRST
        boolean hasState = FilePersistence.loadSnake(statePath, snake);

        GameMap map;

        if (!hasState) {
            map = MapLoader.load(mapPath, snake);
        } else {
            map = MapLoader.load(mapPath, new Snake()); // just for size
        }

        Direction dir = Direction.from(args[0]);
        int steps = Integer.parseInt(args[1]);

        // MOVE
        for (int i = 0; i < steps; i++) {

            Position head = snake.head();

            Position next = new Position(
                    head.row + dir.dr,
                    head.col + dir.dc
            );

            // wall check
            if (map.isWall(next.row, next.col)) {
                System.out.println("Blocked by wall");
                continue;
            }

            // reverse check
            if (snake.reverse(next)) {
                System.out.println("Invalid reverse");
                continue;
            }

            // self collision
            if (snake.hitsItself(next)) {
                System.out.println("Blocked by body");
                continue;
            }

            snake.move(next);
        }

        // REBUILD MAP FROM SNAKE
        map.placeSnake(snake);

        GameRenderer.print(map);

        // SAVE STATE
        FilePersistence.saveSnake(statePath, snake);

        System.out.println();
    }
}
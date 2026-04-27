package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;



import java.io.IOException;

public class SnakeGame {
    public static void main(String[] args) throws IOException {

        if (args.length == 0) {
            System.out.println("Usage: java SnakeGame <direction> <steps>");
            return;
        }

        String direction = args[0].toLowerCase();

        if (
                !direction.equals(Direction.UP) &&
                        !direction.equals(Direction.DOWN) &&
                        !direction.equals(Direction.LEFT) &&
                        !direction.equals(Direction.RIGHT)
        ) {
            System.out.println("Invalid direction");
            return;
        }

        int steps = 1;
        if (args.length > 1) {
            try {
                steps = Integer.parseInt(args[1]);
                if (steps <= 0) throw new Exception();
            } catch (Exception e) {
                System.out.println("Steps must be a positive integer");
                return;
            }
        }

        GameMap gameMap = MapLoader.load("src/map.txt");
        Snake snake = gameMap.extractSnake();

        for (int i = 0; i < steps; i++) {
            // direction is just a String now, no conversion needed
            if (!snake.move(direction, gameMap)) {
                System.out.println("Invalid move. Allowed directions: " + snake.getAvailableDirections(gameMap));
                return;
            }
        }

        GameRenderer.render(gameMap);
        FilePersistence.save(gameMap, "src/map.txt");
    }
}
package org.example.fromyarab.snakeGameOOPEdition;

import java.io.IOException;
import java.util.List;

public class SnakeGame {
    private static final String MAP_FILE_PATH = "src/main/java/org/example/fromyarab/snakeGameOOPEdition/map.txt";
    private static final String SNAKE_FILE_PATH = "src/main/java/org/example/fromyarab/snakeGameOOPEdition/snakeBody.txt";

    private final GameRenderer renderer;
    private GameMap map;
    private Snake snake;

    public SnakeGame() {
        this.renderer = new GameRenderer();
    }

    public static void main(String[] args) {
        SnakeGame game = new SnakeGame();
        game.run(args);
    }

    public void run(String[] args) {
        try {
            if (!parseAndExecuteCommand(args)) {
                renderer.printUsage();
            }
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }

    private boolean parseAndExecuteCommand(String[] args) throws IOException {
        if (args.length == 0) {
            return false;
        }

        if (args.length == 1 && args[0].equalsIgnoreCase("reset")) {
            resetGame();
            return true;
        }

        String directionStr = args[0];
        Direction direction = Direction.fromString(directionStr);

        if (direction == null) {
            return false;
        }

        int steps = 1;
        if (args.length >= 2) {
            try {
                steps = Integer.parseInt(args[1]);
                if (steps <= 0) {
                    System.out.println("Steps must be a positive integer");
                    return false;
                }
            } catch (NumberFormatException e) {
                System.out.println("Invalid steps value");
                return false;
            }
        }

        executeMove(direction, steps);
        return true;
    }

    private void executeMove(Direction direction, int steps) throws IOException {
        loadGameState();

        List<Direction> validDirections = snake.getValidDirections();
        if (validDirections.isEmpty()) {
            renderer.printCollisionMessage("You are stuck!!\nType reset to reset the game..");
            return;
        }

        if (!validDirections.contains(direction)) {
            handleInvalidDirection(direction, validDirections, steps);
            return;
        }

        int maxSteps = snake.getMaxStepsInDirection(direction);

        if (steps > maxSteps) {
            if (maxSteps > 0) {
                renderer.printAvailableSteps(direction.name().toLowerCase(), maxSteps);
            }
            renderer.printCollisionMessage("You hit the snake body..");
            renderer.printValidDirections(validDirections);
            return;
        }

        boolean moved = snake.move(direction, steps);
        if (moved) {
            saveGameState();
            renderer.render(map, snake);
        }
    }

    private void handleInvalidDirection(Direction attemptedDir, List<Direction> validDirections, int steps) {
        renderer.printCollisionMessage("You cannot move " + attemptedDir.name().toLowerCase());
        renderer.printValidDirections(validDirections);
    }

    private void loadGameState() throws IOException {
        MapLoader.MapData data = MapLoader.loadFromFile(MAP_FILE_PATH, SNAKE_FILE_PATH);
        this.map = data.map();
        this.snake = new Snake(data.snakePositions(), map.getRows(), map.getColumns());
    }

    private void saveGameState() throws IOException {
        if (snake == null || snake.getBody().isEmpty()) {
            return;
        }

        GameMap freshMap = new GameMap(map.getRows(), map.getColumns());
        freshMap.placeSnake(snake.getBody());

        FilePersistence.saveMap(freshMap, MAP_FILE_PATH);
        FilePersistence.saveSnakeBody(snake.getBody(), SNAKE_FILE_PATH);
    }

    private void resetGame() throws IOException {
        FilePersistence.resetGame(MAP_FILE_PATH, SNAKE_FILE_PATH);
        renderer.printMessage("Reset Done!");
    }
}
package org.example.fromsulaiman.s5.SnakeOPP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

 // Main entry point for the CLI snake game.
 // It parses arguments, loads/saves files, and runs movement steps.

public class SnakeGame {
    private static final Path MAP_PATH = Path.of("src/main/java/org/example/fromsulaiman/s5/SnakeOPP/map.txt");
    private static final Path SCORE_PATH = Path.of("src/main/java/org/example/fromsulaiman/s5/SnakeOPP/score.txt");
    private static final int FOOD_TO_WIN = 5;
    private static final Random RANDOM = new Random();

    public static void main(String[] args) {
        try {
            args = normalizeArgs(args);
            MapLoader mapLoader = new MapLoader();
            FilePersistence filePersistence = new FilePersistence();
            GameRenderer renderer = new GameRenderer();

            if (isResetCommand(args)) {
                resetMap(args, mapLoader, filePersistence, renderer);
                return;
            }

            validateArgumentCount(args);
            Direction direction = parseDirection(args);
            int steps = parseSteps(args);

            MapLoader.LoadedGame loadedGame = mapLoader.loadOrCreate(MAP_PATH);
            GameMap gameMap = loadedGame.getGameMap();
            Snake snake = loadedGame.getSnake();
            ensureFoodExists(gameMap);
            int eatenFoodCount = loadScore();
            System.out.println("Current score: " + eatenFoodCount + "/" + FOOD_TO_WIN);

            if (eatenFoodCount >= FOOD_TO_WIN) {
                System.out.println("You already reached " + FOOD_TO_WIN + ". Use 'reset' to start a new game.");
                renderer.render(gameMap);
                return;
            }

            for (int i = 0; i < steps; i++) {
                Position currentFood = findFoodPosition(gameMap);
                Position nextHead = snake.getNextHeadPosition(direction, gameMap);
                boolean willEatFood = currentFood != null && nextHead.equals(currentFood);

                boolean moved = snake.moveOneStep(direction, gameMap, willEatFood);
                if (!moved) {
                    System.out.println("Self-collision: snake ate itself. Move cancelled, map state kept.");
                    printAllowedDirections(snake.getAllowedDirections(gameMap));
                    renderer.render(gameMap);
                    return;
                }

                gameMap.placeSnake(snake.getBody());

                if (willEatFood) {
                    eatenFoodCount++;
                    saveScore(eatenFoodCount);
                    System.out.println("Food eaten! Current score: " + eatenFoodCount + "/" + FOOD_TO_WIN);
                    if (eatenFoodCount >= FOOD_TO_WIN) {
                        System.out.println("Game over: You reached " + FOOD_TO_WIN + " foods. You win!");
                        resetToDefaultState(mapLoader, filePersistence, renderer, "Game reset after win. New game started.");
                        return;
                    }
                    spawnRandomFood(gameMap);
                } else if (currentFood != null && gameMap.isEmpty(currentFood)) {
                    // placeSnake clears grid, so keep existing food if it wasn't eaten.
                    gameMap.placeFood(currentFood);
                }
            }

            renderer.render(gameMap);
            filePersistence.save(MAP_PATH, gameMap);
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
            System.out.println("Usage: java SnakeGame <up|down|left|right> [steps]");
            System.out.println("Or:    java SnakeGame reset");
        } catch (IOException e) {
            System.out.println("Error reading/writing map file: " + e.getMessage());
        }
    }

    private static boolean isResetCommand(String[] args) {
        return args.length >= 1 && "reset".equalsIgnoreCase(args[0]);
    }

    private static void resetMap(
            String[] args,
            MapLoader mapLoader,
            FilePersistence filePersistence,
            GameRenderer renderer
    ) throws IOException {
        if (args.length > 1) {
            throw new IllegalArgumentException("Reset command does not take extra arguments.");
        }

        resetToDefaultState(mapLoader, filePersistence, renderer, "Map reset completed.");
    }


     // Resets map and score to a fresh game state.

    private static void resetToDefaultState(
            MapLoader mapLoader,
            FilePersistence filePersistence,
            GameRenderer renderer,
            String message
    ) throws IOException {
        MapLoader.LoadedGame defaultGame = mapLoader.createDefaultGame();
        GameMap gameMap = defaultGame.getGameMap();
        ensureFoodExists(gameMap);
        filePersistence.save(MAP_PATH, gameMap);
        saveScore(0);
        System.out.println(message);
        System.out.println("Current score: 0/" + FOOD_TO_WIN);
        renderer.render(gameMap);
    }


     // Validates number of CLI arguments for movement mode.

    private static void validateArgumentCount(String[] args) {
        if (args.length == 0) {
            throw new IllegalArgumentException("Direction is required.");
        }
        if (args.length > 2) {
            throw new IllegalArgumentException("Too many arguments. Use: <direction> [steps]");
        }
    }

    private static Direction parseDirection(String[] args) {
        Direction direction = Direction.fromString(args[0]);
        if (direction == null) {
            throw new IllegalArgumentException("Direction must be up, down, left, or right.");
        }
        return direction;
    }

    private static int parseSteps(String[] args) {
        if (args.length < 2) {
            return 1;
        }
        try {
            int steps = Integer.parseInt(args[1].trim());
            if (steps <= 0) {
                throw new IllegalArgumentException("Steps must be a positive integer.");
            }
            return steps;
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Steps must be a positive integer.");
        }
    }

    private static void printAllowedDirections(List<Direction> allowedDirections) {
        if (allowedDirections.isEmpty()) {
            System.out.println("No valid directions available.");
            return;
        }

        StringBuilder builder = new StringBuilder("Allowed directions: ");
        for (int i = 0; i < allowedDirections.size(); i++) {
            builder.append(allowedDirections.get(i).name().toLowerCase());
            if (i < allowedDirections.size() - 1) {
                builder.append(", ");
            }
        }
        System.out.println(builder);
    }

    private static void ensureFoodExists(GameMap gameMap) {
        if (!hasFood(gameMap)) {
            spawnRandomFood(gameMap);
        }
    }

    private static boolean hasFood(GameMap gameMap) {
        for (int row = 0; row < gameMap.getRows(); row++) {
            for (int col = 0; col < gameMap.getCols(); col++) {
                if (gameMap.getGrid()[row][col] == GameMap.FOOD) {
                    return true;
                }
            }
        }
        return false;
    }


    // Places one food in a random empty map cell.

    private static void spawnRandomFood(GameMap gameMap) {
        List<Position> emptyCells = new ArrayList<>();
        for (int row = 0; row < gameMap.getRows(); row++) {
            for (int col = 0; col < gameMap.getCols(); col++) {
                Position position = new Position(row, col);
                if (gameMap.isEmpty(position)) {
                    emptyCells.add(position);
                }
            }
        }

        if (emptyCells.isEmpty()) {
            return;
        }

        Position foodPosition = emptyCells.get(RANDOM.nextInt(emptyCells.size()));
        gameMap.placeFood(foodPosition);
    }

    private static Position findFoodPosition(GameMap gameMap) {
        for (int row = 0; row < gameMap.getRows(); row++) {
            for (int col = 0; col < gameMap.getCols(); col++) {
                if (gameMap.getGrid()[row][col] == GameMap.FOOD) {
                    return new Position(row, col);
                }
            }
        }
        return null;
    }


     // Trims CLI arguments and normalizes command/direction argument.

    private static String[] normalizeArgs(String[] args) {
        String[] normalized = new String[args.length];
        for (int i = 0; i < args.length; i++) {
            normalized[i] = args[i] == null ? "" : args[i].trim();
        }

        if (normalized.length >= 1) {
            normalized[0] = normalized[0].toLowerCase();
        }
        return normalized;
    }


    // Reads score from score.txt. If the file is missing/corrupt, returns 0.

    private static int loadScore() {
        try {
            if (!Files.exists(SCORE_PATH)) {
                return 0;
            }

            String value = Files.readString(SCORE_PATH).trim();
            if (value.isEmpty()) {
                return 0;
            }

            int score = Integer.parseInt(value);
            return Math.max(score, 0);
        } catch (IOException | NumberFormatException e) {
            return 0;
        }
    }

     // Saves current score to score.txt.

    private static void saveScore(int score) throws IOException {
        Files.writeString(SCORE_PATH, String.valueOf(score));
    }
}

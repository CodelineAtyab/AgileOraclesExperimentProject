package org.example.fromyarab.snakeGameOOPEdition;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MapLoader {
    private static final int MIN_SIZE = 15;
    private static final int MIN_SNAKE_LENGTH = 5;
    private static final String EMPTY_CELL = "-";
    private static final String SNAKE_CELL = "o";

    public record MapData(GameMap map, List<Position> snakePositions) {}

    public static MapData loadFromFile(String mapFilePath, String snakeFilePath) throws IOException {
        File mapFile = new File(mapFilePath);
        File snakeFile = new File(snakeFilePath);

        List<List<String>> rawMap = readMapFile(mapFile);
        if (!validateMapStructure(rawMap)) {
            throw new IllegalArgumentException("Map validation failed");
        }

        GameMap map = createGameMap(rawMap);
        List<Position> snakePositions = loadSnakePositions(snakeFile, rawMap);

        if (snakePositions.isEmpty()) {
            snakePositions = extractSnakeFromMap(rawMap);
        }

        return new MapData(map, snakePositions);
    }

    private static List<List<String>> readMapFile(File file) throws IOException {
        List<List<String>> rawMap = new ArrayList<>();
        try (Scanner scanner = new Scanner(file)) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                List<String> row = new ArrayList<>();
                for (String cell : line.trim().split("\\s+")) {
                    if (!cell.isEmpty()) {
                        row.add(cell);
                    }
                }
                rawMap.add(row);
            }
        }
        return rawMap;
    }

    private static boolean validateMapStructure(List<List<String>> rawMap) {
        if (rawMap.size() < MIN_SIZE) {
            System.out.println("Map violates size constraints: should be at least " + MIN_SIZE + "x" + MIN_SIZE);
            return false;
        }

        for (List<String> row : rawMap) {
            if (row.size() < MIN_SIZE) {
                System.out.println("Map violates size constraints: should be at least " + MIN_SIZE + "x" + MIN_SIZE);
                return false;
            }
        }

        for (List<String> row : rawMap) {
            for (String cell : row) {
                if (!EMPTY_CELL.equals(cell) && !SNAKE_CELL.equals(cell)) {
                    System.out.println("Map violates character constraints: should contain only '-' and 'o'");
                    return false;
                }
            }
        }

        int snakeCount = 0;
        for (List<String> row : rawMap) {
            for (String cell : row) {
                if (SNAKE_CELL.equals(cell)) {
                    snakeCount++;
                }
            }
        }

        if (snakeCount < MIN_SNAKE_LENGTH) {
            System.out.println("Map violates snake length constraints: should have at least " + MIN_SNAKE_LENGTH + " segments");
            return false;
        }

        return true;
    }

    private static GameMap createGameMap(List<List<String>> rawMap) {
        int rows = rawMap.size();
        int cols = rawMap.get(0).size();
        String[][] grid = new String[rows][cols];

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                grid[i][j] = rawMap.get(i).get(j);
            }
        }

        return new GameMap(grid);
    }

    private static List<Position> loadSnakePositions(File snakeFile, List<List<String>> rawMap) {
        List<Position> positions = new ArrayList<>();

        if (!snakeFile.exists() || snakeFile.length() == 0) {
            return positions;
        }

        try (Scanner scanner = new Scanner(snakeFile)) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim();
                if (line.isEmpty()) continue;

                String[] parts = line.split("\\s+");
                if (parts.length >= 2) {
                    try {
                        int row = Integer.parseInt(parts[0]);
                        int col = Integer.parseInt(parts[1]);
                        positions.add(new Position(row, col));
                    } catch (NumberFormatException e) {
                    }
                }
            }
        } catch (IOException e) {
            return positions;
        }

        return positions;
    }

    private static List<Position> extractSnakeFromMap(List<List<String>> rawMap) {
        List<Position> snakePositions = new ArrayList<>();
        int rows = rawMap.size();
        int cols = rawMap.get(0).size();

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                if (SNAKE_CELL.equals(rawMap.get(i).get(j))) {
                    snakePositions.add(new Position(i, j));
                }
            }
        }

        return snakePositions;
    }

    public static void createDefaultMap(String mapFilePath, int size, int snakeLength) throws IOException {
        java.io.PrintWriter writer = new java.io.PrintWriter(mapFilePath, StandardCharsets.UTF_8);

        int centerRow = size / 2;
        int startCol = (size - snakeLength) / 2;

        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (i == centerRow && j >= startCol && j < startCol + snakeLength) {
                    writer.print("o ");
                } else {
                    writer.print("- ");
                }
            }
            writer.println();
        }
        writer.close();
    }

    public static void clearSnakeFile(String snakeFilePath) throws IOException {
        java.io.PrintWriter writer = new java.io.PrintWriter(snakeFilePath, StandardCharsets.UTF_8);
        writer.print("");
        writer.close();
    }
}
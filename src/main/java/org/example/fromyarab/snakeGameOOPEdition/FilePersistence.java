package org.example.fromyarab.snakeGameOOPEdition;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Scanner;

public class FilePersistence {
    public static void saveMap(GameMap map, String mapFilePath) throws IOException {
        try (PrintWriter writer = new PrintWriter(mapFilePath, StandardCharsets.UTF_8)) {
            List<List<String>> grid = map.toList();
            for (List<String> row : grid) {
                for (int i = 0; i < row.size(); i++) {
                    writer.print(row.get(i));
                    if (i < row.size() - 1) {
                        writer.print(" ");
                    }
                }
                writer.println();
            }
        }
    }

    public static void saveSnakeBody(List<Position> snakeBody, String snakeFilePath) throws IOException {
        try (PrintWriter writer = new PrintWriter(snakeFilePath, StandardCharsets.UTF_8)) {
            for (Position pos : snakeBody) {
                writer.println(pos.getRow() + " " + pos.getColumn());
            }
        }
    }

    public static GameMap loadMap(String mapFilePath) throws IOException {
        File file = new File(mapFilePath);
        if (!file.exists()) {
            throw new FileNotFoundException("Map file not found: " + mapFilePath);
        }

        try (Scanner scanner = new Scanner(file)) {
            String[][] grid = new String[100][];
            int rowCount = 0;

            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                String[] cells = line.trim().split("\\s+");
                grid[rowCount++] = cells;
            }

            String[][] finalGrid = new String[rowCount][];
            for (int i = 0; i < rowCount; i++) {
                finalGrid[i] = grid[i];
            }

            return new GameMap(finalGrid);
        }
    }

    public static List<Position> loadSnakeBody(String snakeFilePath) throws IOException {
        java.util.ArrayList<Position> positions = new java.util.ArrayList<>();
        File file = new File(snakeFilePath);

        if (!file.exists() || file.length() == 0) {
            return positions;
        }

        try (Scanner scanner = new Scanner(file)) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim();
                if (line.isEmpty()) continue;

                String[] parts = line.split("\\s+");
                if (parts.length >= 2) {
                    int row = Integer.parseInt(parts[0]);
                    int col = Integer.parseInt(parts[1]);
                    positions.add(new Position(row, col));
                }
            }
        }

        return positions;
    }

    public static void resetGame(String mapFilePath, String snakeFilePath) throws IOException {
        MapLoader.createDefaultMap(mapFilePath, 15, 9);
        MapLoader.clearSnakeFile(snakeFilePath);
    }
}
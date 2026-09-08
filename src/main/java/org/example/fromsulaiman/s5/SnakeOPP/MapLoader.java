package org.example.fromsulaiman.s5.SnakeOPP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


 // Loads map state from file and validates snake/food/map structure.

public class MapLoader {
    private static final int MIN_SIZE = 15;

     // Creates a fresh default game map (15x15) with centered snake.

    public LoadedGame createDefaultGame() {
        return createDefaultGame(MIN_SIZE, MIN_SIZE);
    }


     // Loads existing map from file or creates default if file is empty/missing.

    public LoadedGame loadOrCreate(Path mapPath) throws IOException {
        if (!Files.exists(mapPath)) {
            return createDefaultGame(MIN_SIZE, MIN_SIZE);
        }

        List<String> lines = Files.readAllLines(mapPath);
        if (lines.isEmpty() || lines.stream().allMatch(String::isBlank)) {
            return createDefaultGame(MIN_SIZE, MIN_SIZE);
        }

        char[][] parsedGrid = parseGrid(lines);
        validateSize(parsedGrid.length, parsedGrid[0].length);

        List<Position> snakeBody = findSnakeBody(parsedGrid);
        Position foodPosition = findFood(parsedGrid);
        if (snakeBody.isEmpty()) {
            return createDefaultGame(parsedGrid.length, parsedGrid[0].length);
        }

        GameMap gameMap = new GameMap(parsedGrid.length, parsedGrid[0].length);
        Snake snake = new Snake(snakeBody);
        gameMap.placeSnake(snake.getBody());
        if (foodPosition != null) {
            gameMap.placeFood(foodPosition);
        }
        return new LoadedGame(gameMap, snake);
    }

    private char[][] parseGrid(List<String> lines) {
        List<char[]> rows = new ArrayList<>();
        int cols = -1;

        for (String line : lines) {
            if (line.isBlank()) {
                continue;
            }

            String[] tokens = line.trim().split("\\s+");
            if (cols == -1) {
                cols = tokens.length;
            } else if (tokens.length != cols) {
                throw new IllegalArgumentException("Invalid map format: all rows must have same number of columns.");
            }

            char[] row = new char[cols];
            for (int i = 0; i < tokens.length; i++) {
                char value = tokens[i].charAt(0);
                if (value != GameMap.EMPTY
                        && value != GameMap.SNAKE
                        && value != GameMap.HEAD
                        && value != GameMap.TAIL
                        && value != GameMap.FOOD) {
                    throw new IllegalArgumentException("Invalid map character: " + value + ". Use '-', 'o', 'H', 'T', or '*'.");
                }
                row[i] = value;
            }
            rows.add(row);
        }

        if (rows.isEmpty()) {
            throw new IllegalArgumentException("Map file is empty.");
        }

        char[][] grid = new char[rows.size()][];
        for (int i = 0; i < rows.size(); i++) {
            grid[i] = Arrays.copyOf(rows.get(i), rows.get(i).length);
        }
        return grid;
    }

    private void validateSize(int rows, int cols) {
        if (rows < MIN_SIZE || cols < MIN_SIZE) {
            throw new IllegalArgumentException("Map size must be at least 15x15.");
        }
    }

    private List<Position> findSnakeBody(char[][] grid) {
        Set<Position> snakeCells = new HashSet<>();
        Position head = null;
        Position tail = null;

        for (int row = 0; row < grid.length; row++) {
            for (int col = 0; col < grid[row].length; col++) {
                char cell = grid[row][col];
                if (cell == GameMap.SNAKE || cell == GameMap.HEAD || cell == GameMap.TAIL) {
                    Position position = new Position(row, col);
                    snakeCells.add(position);
                    if (cell == GameMap.HEAD) {
                        if (head != null) {
                            throw new IllegalArgumentException("Map must contain only one snake head 'H'.");
                        }
                        head = position;
                    }
                    if (cell == GameMap.TAIL) {
                        if (tail != null) {
                            throw new IllegalArgumentException("Map must contain only one snake tail 'T'.");
                        }
                        tail = position;
                    }
                }
            }
        }

        if (snakeCells.isEmpty()) {
            return new ArrayList<>();
        }
        if (head == null || tail == null) {
            throw new IllegalArgumentException("Map must contain both 'H' (head) and 'T' (tail).");
        }

        return buildPathFromTailToHead(snakeCells, tail, head, grid.length, grid[0].length);
    }

    private List<Position> buildPathFromTailToHead(
            Set<Position> snakeCells,
            Position tail,
            Position head,
            int rows,
            int cols
    ) {
        List<Position> path = new ArrayList<>();
        Set<Position> visited = new HashSet<>();
        boolean found = buildPathWithDfs(tail, head, snakeCells, visited, path, rows, cols);

        if (!found) {
            throw new IllegalArgumentException("Invalid snake map: snake cells must form one continuous path from T to H.");
        }

        return path;
    }

    private boolean buildPathWithDfs(
            Position current,
            Position head,
            Set<Position> snakeCells,
            Set<Position> visited,
            List<Position> path,
            int rows,
            int cols
    ) {
        visited.add(current);
        path.add(current);

        if (current.equals(head) && visited.size() == snakeCells.size()) {
            return true;
        }
        if (current.equals(head)) {
            visited.remove(current);
            path.remove(path.size() - 1);
            return false;
        }

        List<Position> neighbors = getSnakeNeighbors(current, snakeCells, rows, cols);
        for (Position neighbor : neighbors) {
            if (!visited.contains(neighbor)) {
                if (buildPathWithDfs(neighbor, head, snakeCells, visited, path, rows, cols)) {
                    return true;
                }
            }
        }

        visited.remove(current);
        path.remove(path.size() - 1);
        return false;
    }

    private List<Position> getSnakeNeighbors(Position position, Set<Position> snakeCells, int rows, int cols) {
        List<Position> neighbors = new ArrayList<>();
        Position up = new Position(Math.floorMod(position.getRow() - 1, rows), position.getCol());
        Position down = new Position(Math.floorMod(position.getRow() + 1, rows), position.getCol());
        Position left = new Position(position.getRow(), Math.floorMod(position.getCol() - 1, cols));
        Position right = new Position(position.getRow(), Math.floorMod(position.getCol() + 1, cols));

        if (snakeCells.contains(up)) {
            neighbors.add(up);
        }
        if (snakeCells.contains(down)) {
            neighbors.add(down);
        }
        if (snakeCells.contains(left)) {
            neighbors.add(left);
        }
        if (snakeCells.contains(right)) {
            neighbors.add(right);
        }

        return neighbors;
    }

    private Position findFood(char[][] grid) {
        Position food = null;
        for (int row = 0; row < grid.length; row++) {
            for (int col = 0; col < grid[row].length; col++) {
                if (grid[row][col] == GameMap.FOOD) {
                    if (food != null) {
                        throw new IllegalArgumentException("Map can contain only one food '*'.");
                    }
                    food = new Position(row, col);
                }
            }
        }
        return food;
    }

    private LoadedGame createDefaultGame(int rows, int cols) {
        validateSize(rows, cols);

        GameMap gameMap = new GameMap(rows, cols);
        int centerRow = rows / 2;
        int centerCol = cols / 2;

        List<Position> body = new ArrayList<>();
        body.add(new Position(centerRow, centerCol - 1));
        body.add(new Position(centerRow, centerCol));
        body.add(new Position(centerRow, centerCol + 1));

        Snake snake = new Snake(body);
        gameMap.placeSnake(snake.getBody());
        return new LoadedGame(gameMap, snake);
    }

    public static class LoadedGame {
        private final GameMap gameMap;
        private final Snake snake;

        public LoadedGame(GameMap gameMap, Snake snake) {
            this.gameMap = gameMap;
            this.snake = snake;
        }

        public GameMap getGameMap() {
            return gameMap;
        }

        public Snake getSnake() {
            return snake;
        }
    }
}

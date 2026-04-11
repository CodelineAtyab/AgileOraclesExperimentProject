package org.example.fromabdullahalhadabi;
import java.io.File;
import java.util.*;



public class EscapetheMaze {
    public static void main(String[] args) {
        try {

            Maze maze = MazeLoader.load("Maze.txt");

            MazeValidator.validate(maze);

            MazeSolver.solve(maze);

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }


}

class Position {
    int row, col;

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }
}

class Maze {
    private char[][] grid;

    public Maze(char[][] grid) {
        this.grid = grid;
    }

    public char[][] getGrid() {
        return grid;
    }

    public boolean isValid(int r, int c) {
        return r >= 0 && c >= 0 &&
                r < grid.length &&
                c < grid[0].length &&
                grid[r][c] != '1';
    }

    public boolean isExit(int r, int c) {
        return grid[r][c] == 'E';
    }
}

class MazeLoader {
    public static Maze load(String fileName) throws Exception {
        List<char[]> rows = new ArrayList<>();
        Scanner sc = new Scanner(new File(fileName));

        while (sc.hasNextLine()) {
            String line = sc.nextLine().trim();
            rows.add(line.replace(" ", "").toCharArray());
        }

        sc.close();
        char[][] grid = rows.toArray(new char[0][]);
        return new Maze(grid);
    }
}

class MazeValidator {

    public static void validate(Maze maze) throws Exception {
        char[][] grid = maze.getGrid();
        int n = grid.length;

        for (char[] row : grid) {
            if (row.length != n) {
                throw new Exception("Maze must be n x n.");
            }
        }

        int start = 0, exit = 0;

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (grid[i][j] == '@') start++;
                if (grid[i][j] == 'E') exit++;
            }
        }

        if (start != 1) throw new Exception("Must have exactly ONE @");
        if (exit != 1) throw new Exception("Must have exactly ONE E");

        // Check borders
        for (int i = 0; i < n; i++) {
            if (!validBorder(grid[0][i])) throw new Exception("Invalid top border");
            if (!validBorder(grid[n - 1][i])) throw new Exception("Invalid bottom border");
            if (!validBorder(grid[i][0])) throw new Exception("Invalid left border");
            if (!validBorder(grid[i][n - 1])) throw new Exception("Invalid right border");
        }
    }

    private static boolean validBorder(char c) {
        return c == '1' || c == '@' || c == 'E';
    }
}

class MazeRenderer {

    public static void print(Maze maze, Position current) {
        char[][] grid = maze.getGrid();

        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {

                if (current != null && i == current.row && j == current.col)
                    System.out.print("@ ");
                else
                    System.out.print(grid[i][j] + " ");
            }
            System.out.println();
        }
    }
}

class MazeSolver {

    public static void solve(Maze maze) throws InterruptedException {

        int rows = maze.getGrid().length;
        int cols = maze.getGrid()[0].length;

        Stack<Position> stack = new Stack<>();
        boolean[][] visited = new boolean[rows][cols];

        Position start = findStart(maze);
        stack.push(start);

        while (!stack.isEmpty()) {

            Position current = stack.peek();

            clearConsole();
            MazeRenderer.print(maze, current);
            Thread.sleep(1000);

            if (maze.isExit(current.row, current.col)) {
                System.out.println("\n Maze Solved");
                printPath(stack);
                System.out.println("Exit at: (" + current.row + "," + current.col + ")");
                return;
            }

            visited[current.row][current.col] = true;

            if (move(maze, stack, visited, current.row - 1, current.col)) continue;
            if (move(maze, stack, visited, current.row + 1, current.col)) continue;
            if (move(maze, stack, visited, current.row, current.col - 1)) continue;
            if (move(maze, stack, visited, current.row, current.col + 1)) continue;

            stack.pop(); // backtrack
        }

        System.out.println("No path found ");
    }

    private static void printPath(Stack<Position> stack) {
        System.out.print("Path: ");
        for (int i = 0; i < stack.size(); i++) {
            Position p = stack.get(i);
            System.out.print("(" + p.row + "," + p.col + ")");
            if (i < stack.size() - 1) System.out.print(" -> ");
        }
        System.out.println();
    }

    private static boolean move(Maze maze, Stack<Position> stack, boolean[][] visited, int r, int c) {
        if (maze.isValid(r, c) && !visited[r][c]) {
            stack.push(new Position(r, c));
            return true;
        }
        return false;
    }

    private static Position findStart(Maze maze) {
        char[][] grid = maze.getGrid();

        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[0].length; j++) {
                if (grid[i][j] == '@')
                    return new Position(i, j);
            }
        }
        return null;
    }

    private static void clearConsole() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }
}



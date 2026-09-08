package org.example.fromalharithalkindi.s5.EscapeTheMazeOOP;


import java.util.Stack;

public class MazeSolver {

    private Maze maze;
    private boolean[][] visited;
    private Stack<Position> stack;
    private char[][] display;

    public MazeSolver(Maze maze) {
        this.maze = maze;
        int n = maze.getSize();
        visited = new boolean[n][n];
        stack = new Stack<>();
        display = new char[n][n];

        for (int i = 0; i < n; i++) {
            display[i] = maze.getGrid()[i].clone();
        }
    }

    public void solve() throws InterruptedException {
        Position start = findStart();
        stack.push(start);
        visited[start.getRow()][start.getCol()] = true;

        int[][] dir = {{-1,0},{1,0},{0,-1},{0,1}};

        while (!stack.isEmpty()) {
            Position current = stack.pop();
            int r = current.getRow();
            int c = current.getCol();

            display[r][c] = '@';
            MazeRenderer.render(display);
            Thread.sleep(1000);

            if (maze.isExit(r, c)) {
                System.out.println("Maze Solved!");
                System.out.println("Exit at: (" + r + "," + c + ")");
                return;
            }

            display[r][c] = '0';

            for (int[] d : dir) {
                int nr = r + d[0];
                int nc = c + d[1];

                if (maze.isValidMove(nr, nc) && !visited[nr][nc]) {
                    visited[nr][nc] = true;
                    stack.push(new Position(nr, nc));
                }
            }
        }

        System.out.println("No path found.");
    }

    private Position findStart() {
        char[][] grid = maze.getGrid();

        for (int i = 0; i < maze.getSize(); i++) {
            for (int j = 0; j < maze.getSize(); j++) {
                if (grid[i][j] == '@') {
                    return new Position(i, j);
                }
            }
        }
        throw new RuntimeException("Start not found");
    }
}
package org.example.fromkawther.sprint5.oopmaze;

import java.util.Stack;

public class MazeSolver {
private Maze maze;
private boolean[][] visited;
 private Stack<Position> stack = new Stack<>();

  public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getRows()][maze.getCols()];
    }

  public void solve() {
        Position start = findStart();
        if (start == null) return;

        stack.push(start);

        while (!stack.isEmpty()) {
            Position current = stack.peek();
            int r = current.row;
            int c = current.col;

            if (maze.isExit(r, c)) {
                MazeRenderer.render(maze);
                printResult(true);
                return;
            }

            visited[r][c] = true;
            Position next = getNextMove(r, c);

            if (next != null) {
                stack.push(next);
                if (maze.getCell(next.row, next.col) != 'E') {
                    maze.setCell(next.row, next.col, '@');
                }
            } else {
                // backtrucking :
                Position back = stack.pop();
                maze.setCell(back.row, back.col, '0');
            }
            MazeRenderer.render(maze);
        }
        printResult(false);
    }

 private Position getNextMove(int r, int c) {
        int[][] directions = {{-1, 0}, {1, 0}, {0, -1}, {0, 1}};
        for (int[] d : directions) {
            int newR = r + d[0];
            int newC = c + d[1];
            if (maze.isValidMove(newR, newC) && !visited[newR][newC]) {
                return new Position(newR, newC);
            }
        }
        return null;
    }

  private Position findStart() {
        for (int i = 0; i < maze.getRows(); i++) {
            for (int j = 0; j < maze.getCols(); j++) {
                if (maze.getCell(i, j) == '@') return new Position(i, j);
            }
        }
        return null;
    }

    private void printResult(boolean success) {
        if (success) {
            System.out.println("Maze Solved!");
            System.out.print("Path: ");
            for (Position p : stack) {
                System.out.print(p.getInfo() + " -> ");
            }
            System.out.println("E");
        } else {
            System.out.println("No path found.");
        }
    }
}

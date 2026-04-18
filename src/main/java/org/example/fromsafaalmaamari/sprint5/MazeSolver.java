package org.example.fromsafaalmaamari.sprint5;
import java.util.Stack;

public class MazeSolver {
    private Maze maze;
    private boolean[][] visited;
    private Stack<Position> stack;

    public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getRows()][maze.getCols()];
        this.stack = new Stack<>();
    }

    public boolean solve(Position start) throws InterruptedException {

        stack.push(start);

        int[][] directions = {{0,1},{1,0},{0,-1},{-1,0}};

        while (!stack.isEmpty()) {

            Position current = stack.peek();
            int r = current.row;
            int c = current.col;

            if (maze.isExit(r, c)) {
                System.out.println("Maze solved!");
                return true;
            }

            visited[r][c] = true;

            boolean foundNextStep = false;

            for (int[] dir : directions) {
                int nextR = r + dir[0];
                int nextC = c + dir[1];

                if (maze.isValidMove(nextR, nextC, visited)) {

                    if (!maze.isExit(r, c))
                        maze.setCell(r, c, '-');

                    if (!maze.isExit(nextR, nextC))
                        maze.setCell(nextR, nextC, '@');

                    stack.push(new Position(nextR, nextC));

                    MazeRenderer.render(maze);
                    Thread.sleep(1000);

                    foundNextStep = true;
                    break;
                }
            }

            if (!foundNextStep) {
                stack.pop();

                if (!stack.isEmpty()) {
                    Position prev = stack.peek();

                    if (!maze.isExit(r, c))
                        maze.setCell(r, c, '-');

                    if (!maze.isExit(prev.row, prev.col))
                        maze.setCell(prev.row, prev.col, '@');

                    MazeRenderer.render(maze);
                    Thread.sleep(1000);
                }
            }
        }

        System.out.println("No path found!");
        return false;
    }
}


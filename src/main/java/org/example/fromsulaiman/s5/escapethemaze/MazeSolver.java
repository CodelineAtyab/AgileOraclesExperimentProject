package org.example.fromsulaiman.s5.escapethemaze;

public class MazeSolver {

    private Maze maze;
    private boolean[][] visited;
    private final Stack<Position> stack = new Stack<>();

    public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getSize()][maze.getSize()];
    }

    public boolean solve(Position start) throws InterruptedException {

        stack.push(start);

        while (!stack.isEmpty()) {

            Position current = stack.peek();
            int r = current.getRow();
            int c = current.getCol();

            if (maze.isExit(r, c)) {
                animate(current);
                return true;
            }

            visited[r][c] = true;

            animate(current);


            if (move(r - 1, c)) continue;
            if (move(r + 1, c)) continue;
            if (move(r, c - 1)) continue;
            if (move(r, c + 1)) continue;

            stack.pop();

            if (!stack.isEmpty()) {
                animate(stack.peek());
            }
        }

        return false;
    }

    private boolean move(int r, int c) {
        if (maze.isValidMove(r, c) && !visited[r][c]) {
            stack.push(new Position(r, c));
            return true;
        }
        return false;
    }

    public Stack<Position> getPath() {
        return stack;
    }

    private void animate(Position pos) throws InterruptedException {
        int r = pos.getRow();
        int c = pos.getCol();
        char previous = maze.getCell(r, c);
        maze.setCell(r, c, '@');
        MazeRenderer.clear();
        MazeRenderer.render(maze);
        MazeRenderer.delay();
        maze.setCell(r, c, previous);
    }
}

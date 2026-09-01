package org.example.fromahed.sprintA5;

import java.util.Stack;

public class MazeSolver {

    private Maze maze;

    public MazeSolver(Maze maze) {
        this.maze = maze;
    }

    public boolean solve() throws InterruptedException {

        //starting location of player '@'
        Position initialPlayerPosition = MazeLoader.getPlayerLocation(maze);

        boolean[][] visited = new boolean[maze.getRows()][maze.getCols()];
        //stack for DFS backtracking
        Stack<Position> stack = new Stack<>();
        stack.push(initialPlayerPosition);

        int[][] directions = {
                {-1, 0},//up
                {1, 0},//down
                {0, -1},//left
                {0, 1},//right
        };

        //!solved > not found exit
        while (!stack.isEmpty()) {
            //here will pop positions to explore or search
            Position current = stack.pop();
            int row = current.getRow();
            int col = current.getCol();

            //check
            if (!maze.isValidMove(row, col) || visited[row][col]) {
                continue;
            }

            visited[row][col] = true;

            //check if exit
            if (maze.isExit(row, col)) {
                MazeRender.displayMaze(maze);

                printPath(current);
                System.out.println("found an exit at: (" + row + "," + col + ")");
                return true;
            }
            //mark the current position '@'
            if (!maze.isExit(row, col)) {
                maze.set(row, col, '@');
            }

            //show step by step
            MazeRender.displayMaze(maze);
            Thread.sleep(1000);

            //convert it to visited position '-'
            if (!maze.isExit(row, col)) {
                maze.set(row, col, '-');
            }

            //explore neighbors
            for (int i = 0; i < directions.length; i++) {
                int r = row + directions[i][0];
                int c = col + directions[i][1];

                if (maze.isValidMove(r, c) && !visited[r][c] && maze.isWalkable(r, c)) {
                    stack.push(new Position(r, c, current));
                }
            }
        }

        return false;
    }

    //print the path
    private void printPath(Position exit) {
        Stack<Position> path = new Stack<>();

        Position temp = exit;
        while (temp != null) {
            path.push(temp);
            temp = temp.getParent();
        }

        System.out.print("Path: ");
        while (!path.isEmpty()) {
            Position p = path.pop();
            System.out.print("(" + p.getRow() + "," + p.getCol() + ")");
            if (!path.isEmpty()) {
                System.out.print("→");
            }
        }
        System.out.println();
    }
}


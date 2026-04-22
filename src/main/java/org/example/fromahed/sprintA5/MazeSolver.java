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
            if (maze.isExit(row, col)) {
                maze.set(row, col, '@');//show player at exit
                MazeRender.displayMaze(maze);
                Thread.sleep(1000);

                printPath(current);
                System.out.println("found an exit at: (" + row + "," + col + ")");
                return true;
            }
            //mark current position
            maze.set(row, col, '@');
            MazeRender.displayMaze(maze);
            Thread.sleep(1000);

            //mark visited path
            maze.set(row, col, '-');
            //explore neighbors
            int r, c;
            //up
            r = row - 1;
            c = col;
            if (maze.isValidMove(r, c) && !visited[r][c] && maze.isWalkable(r, c)) {
                stack.push(new Position(r, c, current));
            }
            //down
            r = row + 1;
            c = col;
            if (maze.isValidMove(r, c) && !visited[r][c] && maze.isWalkable(r, c)) {
                stack.push(new Position(r, c, current));
            }
            //left
            r = row;
            c = col - 1;
            if (maze.isValidMove(r, c) && !visited[r][c] && maze.isWalkable(r, c)) {
                stack.push(new Position(r, c, current));
            }
            //right
            r = row;
            c = col + 1;
            if (maze.isValidMove(r, c) && !visited[r][c] && maze.isWalkable(r, c)) {
                stack.push(new Position(r, c, current));
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


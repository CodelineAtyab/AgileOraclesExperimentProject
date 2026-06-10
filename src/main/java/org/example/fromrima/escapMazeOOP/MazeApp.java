package org.example.fromrima.escapMazeOOP;

import java.util.Stack;

public class MazeApp {
    public static void main(String[] args) throws InterruptedException {
        String pathFile ="src/main/java/org/example/fromrima/escapMazeOOP/maze.txt";
        MazeLoader loader = new MazeLoader();
        Maze maze;
        try {
            maze = loader.load(pathFile);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return;
        }
        Position start = maze.findStart();
        MazeRenderer renderer = new MazeRenderer();
        MazeSolver solver = new MazeSolver(maze, renderer);
        Stack<Position> path = solver.solve(start);
        if (path != null) {
            System.out.println("\nMaze Solved!");
            renderer.printPath(path);
            Position end = path.peek();
            System.out.println("Found an Exit at: (" + (end.getRow() + 1) + "," + (end.getCol() + 1) + ")");
        } else {
            System.out.println("No path found.");
        }
    }
}
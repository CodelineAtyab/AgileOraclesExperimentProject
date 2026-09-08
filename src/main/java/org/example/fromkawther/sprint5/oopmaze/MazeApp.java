package org.example.fromkawther.sprint5.oopmaze;

public class MazeApp {
public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Usage: java MazeApp maze.txt");
            return;
        }

        try {
            Maze maze = MazeLoader.load(args[0]);
            MazeSolver solver = new MazeSolver(maze);
            solver.solve();
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
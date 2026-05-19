package org.example.fromaljolanda.sprint5.escapeTheMazeOOPEdition;

public class Main {
    public static void main(String[] args) {

        // check argument
        if (args.length != 1) {
            System.out.println("Usage: java Main maze.txt");
            return;
        }

        String path = args[0];

        try {
            // Load maze
            Maze maze = MazeLoader.load(path);

            // Solve maze
            MazeSolver.solve(maze);
        }
        catch (Exception e) {
            System.out.println("File not found!");
        }
    }
}

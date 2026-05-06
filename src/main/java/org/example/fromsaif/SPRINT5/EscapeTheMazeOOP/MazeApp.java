package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

import java.io.IOException;

public class MazeApp {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Error: Please provide the correct file path.");
            return;
        }
        String mazeFilePath = args[0];

        try {
            MazeLoader loader = new MazeLoader();
            Maze maze = loader.loadMaze(mazeFilePath);
            MazeRenderer renderer = new MazeRenderer();
            MazeSolver solver = new MazeSolver(maze, renderer);

            boolean solved = solver.solve();

            if (solved) {
                System.out.println("Maze Solved!");
            } else {
                System.out.println("No path found.");
            }
        } catch (IOException e) {
            System.out.println("Error: Could not read file");
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

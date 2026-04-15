package org.example.fromsulaiman.s5.escapethemaze;

public class MazeApp {
    public static void main(String[] args) {

        try {
            Maze maze = MazeLoader.load("maze.txt");

            System.out.println("Maze loaded successfully!\n");

            char[][] grid = maze.getGrid();

            for (char[] row : grid) {
                for (char cell : row) {
                    System.out.print(cell + " ");
                }
                System.out.println();
            }

        } catch (Exception e) {
            System.out.println("Error loading maze: " + e.getMessage());
        }
    }
}

package org.example.fromalharithalkindi.s5.EscapeTheMazeOOP;

public class MazeApp {
    public static void main(String[] args) {
        try {
            if (args.length == 0) {
                System.out.println("Usage: java MazeApp <maze-file>");
                return;
            }

            Maze maze = MazeLoader.load(args[0]);
            MazeSolver solver = new MazeSolver(maze);
            solver.solve();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
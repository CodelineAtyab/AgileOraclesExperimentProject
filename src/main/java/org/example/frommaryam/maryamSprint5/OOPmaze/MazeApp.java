package org.example.frommaryam.maryamSprint5.OOPmaze;

public class MazeApp {

    public static void main(String[] args) {

        //  input check
        if (args.length != 1) {
            System.out.println("usage: java MazeApp maze.txt");
            return;
        }

        try {
            // load maze + solve it
            Maze maze = MazeLoader.load(args[0]);
            MazeSolver solver = new MazeSolver(maze);

            solver.solve();

        } catch (Exception e) {
            System.out.println("error: " + e.getMessage());
        }
    }
}

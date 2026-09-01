package org.example.fromsafa.sprint5;

public class MazeApp {

    public static void main(String[] args) throws Exception {

        if (args.length == 0) {
            System.out.println("Please provide maze file path");
            return;
        }

        Maze maze = MazeLoader.load(args[0]);

        maze.printMaze();

        MazeSolver solver = new MazeSolver(maze);

        boolean solved = solver.solve();

        System.out.println("Solved: " + solved);
        maze.printMaze();
    }
}

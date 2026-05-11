package org.example.fromahed.sprintA5;

public class MazeApp {
    public static void main(String[] args) throws InterruptedException {

        if (args.length != 1) {
            System.out.println("Usage: java MazeApp <maze.file>");
            return;
        }

        String filePath = args[0];

        //load maze
        Maze maze = MazeLoader.loadAndGetMaze(filePath);
        //validate maze
        if (maze == null || !MazeLoader.validateMaze(maze)) {
            System.out.println("Maze file does not exist");
            return;
        }
        //solving maze:
        MazeSolver solver = new MazeSolver(maze);
        boolean solved = solver.solve();

        //the result
        if (solved) {
            System.out.println("Great maze solved");
        } else {
            System.out.println("No path found");
        }
        //display final maze
        MazeRender.displayMaze(maze);
    }
}




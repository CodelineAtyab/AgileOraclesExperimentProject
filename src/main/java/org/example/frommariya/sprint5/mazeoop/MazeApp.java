package org.example.frommariya.sprint5.mazeoop;

public class MazeApp {
    public static void main(String[] args){
        if(args.length == 0){
            System.out.println("Error: No file for Maze");
            System.out.println("java MazeApp maze.txt");
            return;
        }
        if(args.length>1){
            System.out.println("Too many arguments, needed the path <maze.txt>");
        }
        try {
            System.out.println("Maze Loading "+args[0]);
            Maze mazeOop = MazeLoader.load(args[0]); //Maze referes to Maze.java
            MazeSolver solve = new MazeSolver(mazeOop);
            solve.solving(); // from MazeSolver.java , backtracking animation
        } catch (java.io.FileNotFoundException e){
            System.out.println("Error: File Not Found!");
        } catch (Exception e){
            System.out.println("An Error Occurred");
            System.exit(0);
        }
    }
}

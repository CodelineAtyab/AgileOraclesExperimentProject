package org.example.fromkhadija.sprint4;

import java.io.IOException;
import java.util.Stack;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Maze {

    public static void main(String[] args) throws InterruptedException {

        //The application accepts a single CLI argument: the path to the maze file.
        String pathFromCLI = args[0];
        try {
            char[][] maze = loadTheGame(pathFromCLI);
            int[] start = playerlocation(maze);

            if (start != null) {
                Backtracking(maze, start[0], start[1]);
            } else {
                System.out.println("Starting point '@' not found.");
            }
        } catch (IOException e) {
            System.out.println("Error reading file: " + e.getMessage());
        }
    }

    public static char[][] loadTheGame(String pathStr) throws IOException {

        Path mazePath = Paths.get( "src/main/java/org/example/fromkhadija/sprint4/mazefile.txt");
        String fileContent = Files.readString(mazePath);

        String[] lines = fileContent.split("\\R");
        char[][] maze = new char[lines.length][];

        for (int i = 0; i < lines.length; i++) {
            maze[i] = lines[i].toCharArray();
        }
        //If the file does not exist or is malformed, an error message is shown.
        if (!Files.exists(mazePath)) {
            throw new IOException("File does not exist " + mazePath);
        }
        return maze;
    }


    public static void Backtracking(char[][] maze, int initialRow, int initialCol) throws InterruptedException { // used with Thread sleep
        // A Stack data structure is used to push the current position during exploration.
        Stack<int[]> stack = new Stack<>(); //LIFO ---> helpful for return back with False Exit

        stack.push(new int[]{initialRow, initialCol}); // Adding initialRow and initialColumn

        while (!stack.isEmpty()) { //continue searching while the stack not empty .. when the stack is empty and dose not reached to Exit point --> it means  No solution  found
            int[] current = stack.peek(); // peek --> return the current position without removing from  the Stack
            int currrow = current[0];
            int currcol = current[1];

            if (maze[currrow][currcol] == 'E') { // Search about The Exit point
                displayMaze(maze, currrow, currcol);
                System.out.println("\nMaze Finished");
                printFinalPath(stack);
                return;
            }

                maze[currrow][currcol] = '.'; /* when the player stand on new point --> mark  as (.) only if it is NOT (@) starting / entering point
                    to Avoid infinite loop */
                displayMaze(maze, currrow, currcol); // display  and give some to see what happened
                Thread.sleep(1000);


            int[] nextMove = findNextMove(maze, currrow, currcol); //search about free and not visited point
            if (nextMove != null) {
                stack.push(nextMove); // when it is tamam --> push it in the stack
            } else {
                // Backtrack--> it means this path is Not correct --> pop it out
                maze[currrow][currcol] = 'X'; // point to --> FAILED PATH --> The pop will search NEW PATH
                stack.pop();
            }
        }
        System.out.println("\nNo path found.");
    }

    private static int[] findNextMove(char[][] maze, int row, int column) {// compass--> where should move to next step
        int[][] directions =
                {{0, 1}, //Right--> same row , next column
                        {1, 0}, //Dawn--> next row , same column
                        {0, -1}, //Left--> same row , previous column
                        {-1, 0}};//Up--> previous row , sam column

        for (int[] dir : directions) {
            int newrow = row + dir[0];//
            int newcol = column + dir[1];

            // Check boundaries
            if (newrow >= 0 && newrow < maze.length && newcol >= 0 && newcol < maze[newrow].length) {

                // Available Path: Only move to '0' (open) or 'E' (exit)
                if (maze[newrow][newcol] == '0' || maze[newrow][newcol] == 'E') {
                    // why ignore  1: it's wall | .: already visited path | x: blocked path
                    return new int[]{newrow, newcol
                    }; // both conditions are met /checked --> the function will save possible path to go throw it
                }
            }
        }
        return null;// return null --> go back to Backtracking method to move on new direction
    }

    /*  Explain line 96: check new row and new column inside the maze frame / size:
     * 1- newrow >= 0: Dose not go outside the maze from (UP)
     * 2- newrow < maze.length: Dose not go outside the maze from (DAWN)
     * 3- newcol >= 0: Dose not go outside the maze from (LEFT)
     * 4- newcol < maze[newrow].length: Dose not go outside the maze from (RIGHT)
     *
     * */

    public static void printEmptyarray() {
        // use to organize / separate the previous maze
        for (int i = 0; i < 5; i++) {
            System.out.println();
        }
    }

    public static void displayMaze(char[][] maze, int playerRow, int playerCol) {
        // 1. Clear the view before printing the new frame
        printEmptyarray();

        for (int i = 0; i < maze.length; i++) { // use Nested loop to go throw all index of array
            for (int j = 0; j < maze[i].length; j++) {
                if (i == playerRow && j == playerCol) { // is this place where the player stand? --> @
                    System.out.print("@ ");}
                else {
                    System.out.print(maze[i][j] + " "); // if it is NO --> print other characters 1, 0 and .
                }
            }
            System.out.println();
        }
    }

    private static int[] playerlocation(char[][] maze) { /* This method use to search from (0,0)  until reach to start point @ */
        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[i].length; j++) {
                if (maze[i][j] == '@') {
                    return new int[]{i, j}; // when the position of @ is found --> create  a new  array to store (row, column)
                }
            }
        }
        return null;
    }

    private static void printFinalPath(Stack<int[]> stack) { // after solving the maze, and its task is to display the coordinates, followed to reach the goal.
        System.out.print("Path: ");
        for (int[] pos : stack) {
            System.out.printf("(%d,%d) ", pos[0], pos[1]);

        }
        System.out.println();
    }
}

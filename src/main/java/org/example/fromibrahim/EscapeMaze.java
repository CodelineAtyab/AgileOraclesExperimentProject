package org.example.fromibrahim;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Stack;

public class EscapeMaze {

    static class Position {
        int row;
        int columns;

        Position(int row, int columns) {
            this.row = row;
            this.columns = columns;
        }
    }


    public static void main(String[] argsuments){

        //  Part.1 Read File & Validation

        //  Validate CLI Argument
        String filePath = "src/main/java/org/example/fromibrahim/data/maze";

        // Read the File Line By Line
        ArrayList<String> lines = new ArrayList<>();
        try {
            File file = new File(filePath);
            Scanner inputBuffer = new Scanner(file);

            while (inputBuffer.hasNextLine()) {
                String line = inputBuffer.nextLine().trim();
                //  This avoids adding blank lines
                if (!line.isEmpty()) {
                    lines.add(line);
                }
            }
            inputBuffer.close();

        } catch (FileNotFoundException e) {
            System.out.println("Error: File not found.");
            return;
        }

        // Check if file is empty
        if (lines.isEmpty()) {
            System.out.println("Error: Maze file is empty.");
            return;
        }

        // Validate row length and characters

        //  Number of rows in the maze = number of lines.
        int rows = lines.size();
        //  Number of columns = length of the first row
        int columns = lines.get(0).length();

        //  This will count how many @ and E characters exist
        int startCount = 0;
        int exitCount = 0;

        for (int row = 0; row < rows; row++) {
            String line = lines.get(row);

            //  Checks if the current row length is different from the first row length
            if (line.length() != columns) {
                System.out.println("Error: Maze rows are not the same length.");
                return;
            }

            for (int col = 0; col < columns; col++) {
                //  Gets one character from the current row
                char ch = line.charAt(col);

                if (ch != '1' && ch != '0' && ch != '@' && ch != 'E') {
                    System.out.println("Error: Invalid character found in maze.");
                    return;
                }
                if (ch == '@') {
                    startCount++;
                }
                if (ch == 'E') {
                    exitCount++;
                }
            }
        }

        //  Checks whether there is exactly one start and one exit
        if (startCount != 1 || exitCount != 1) {
            System.out.println("Error: Maze must contain exactly one '@' and one 'E'.");
            return;
        }

        //  Part.2 Convert to 2D Array & Locate Start and End Point & Validation

        //  Create 2D Array
        char[][] maze = new char[rows][columns];

        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                maze[row][col] = lines.get(row).charAt(col);
            }
        }

        //  Find start and exit Points
        Position start = null;
        Position exit = null;

        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                if (maze[row][col] == '@') {
                    start = new Position(row, col);
                }

                if (maze[row][col] == 'E') {
                    exit = new Position(row, col);
                }
            }
        }

        //  Validate Border and cells
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {

                //  This check if the current cell is on the border
                boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == columns - 1;

                if (isBorder) {
                    char ch = maze[row][col];
                    if (ch != '1' && ch != '@' && ch != 'E') {
                        System.out.println("Error: Border cells must be '1' except '@' and 'E'.");
                        return;
                    }
                }
            }
        }

        //  Part.3 Creating Stack & Solve the Map

        //  Create stack to Store Visited Arrays
        Stack<Position> stack = new Stack<>();
        //  Creates a 2D boolean array to remember visited cells
        boolean[][] visited = new boolean[rows][columns];

        //  Pushes the start position into the stack @
        stack.push(start);
        //  Marks the start cell as visited
        visited[start.row][start.columns] = true; // @

        //  This variable will become true if we reach the exit
        boolean found = false;

        //  Start Solving the Maze
        while (!stack.isEmpty()) {
            //  Looks at the top position in the stack
            Position current = stack.peek();

            //  Saves what was originally in the current cell
            char originalChar = maze[current.row][current.columns];
            //  If current cell is not exit, then show @
            if (maze[current.row][current.columns] != 'E') {
                maze[current.row][current.columns] = '@';
            }

            //  Print maze
            System.out.println();

            for (int row = 0; row < rows; row++) {
                for (int col = 0; col < columns; col++) {
                    System.out.print(maze[row][col]);
                }
                System.out.println();
            }

            //  Printing Delay
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                System.out.println("Movement stop !.");
            }

            //  Check if exit reached
            if (current.row == exit.row && current.columns == exit.columns) {
                found = true;
                break;
            }

            // Movement
            boolean movedPath = false;

            // Up
            int newRowMovement = current.row - 1;
            int newColumnMovement = current.columns;

            if (newRowMovement >= 0 && newRowMovement < rows && newColumnMovement >= 0 && newColumnMovement < columns) {
                //  The cell must not have been visited before.
                if (!visited[newRowMovement][newColumnMovement] && (maze[newRowMovement][newColumnMovement] == '0' || maze[newRowMovement][newColumnMovement] == 'E')) {
                    //  Move there by adding the new position to the stack
                    stack.push(new Position(newRowMovement, newColumnMovement));
                    //  Mark it visited
                    visited[newRowMovement][newColumnMovement] = true;
                    movedPath = true;
                }
            }

            //  Right
            //  Only try right if up did not work
            if (!movedPath) {
                newRowMovement = current.row;
                newColumnMovement = current.columns + 1;

                if (newRowMovement >= 0 && newRowMovement < rows && newColumnMovement >= 0 && newColumnMovement < columns) {
                    if (!visited[newRowMovement][newColumnMovement] && (maze[newRowMovement][newColumnMovement] == '0' || maze[newRowMovement][newColumnMovement] == 'E')) {
                        stack.push(new Position(newRowMovement, newColumnMovement));
                        visited[newRowMovement][newColumnMovement] = true;
                        movedPath = true;
                    }
                }
            }

            // Down
            if (!movedPath) {
                newRowMovement = current.row + 1;
                newColumnMovement = current.columns;

                if (newRowMovement >= 0 && newRowMovement < rows && newColumnMovement >= 0 && newColumnMovement < columns) {
                    if (!visited[newRowMovement][newColumnMovement] && (maze[newRowMovement][newColumnMovement] == '0' || maze[newRowMovement][newColumnMovement] == 'E')) {
                        stack.push(new Position(newRowMovement, newColumnMovement));
                        visited[newRowMovement][newColumnMovement] = true;
                        movedPath = true;
                    }
                }
            }

            // Left
            if (!movedPath) {
                newRowMovement = current.row;
                newColumnMovement = current.columns - 1;
                if (newRowMovement >= 0 && newRowMovement < rows && newColumnMovement >= 0 && newColumnMovement < columns) {
                    if (!visited[newRowMovement][newColumnMovement] && (maze[newRowMovement][newColumnMovement] == '0' || maze[newRowMovement][newColumnMovement] == 'E')) {
                        stack.push(new Position(newRowMovement, newColumnMovement));
                        visited[newRowMovement][newColumnMovement] = true;
                        movedPath = true;
                    }
                }
            }

            //  Backtracking
            //  Remove the current position from the stack
            if (!movedPath) {
                stack.pop();
            }
        }

        // The Maze Solved and Reach the Exit !
        if (found) {
            System.out.println("Maze Solved!");
            System.out.println("Path:");

        } else {
            System.out.println("No path found.");
        }
    }
}

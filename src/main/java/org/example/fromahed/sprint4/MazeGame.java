package org.example.fromahed.sprint4;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Stack;

public class MazeGame {
    public static void main(String[] args) throws InterruptedException {

        //load maze, the maze become a grid maze[row][col]
        char[][] maze = loadAndGetMaze();
        //check if that's maze valid or not:
        if (maze == null || !validateMaze(maze)) {
            System.out.println("Maze file does not exist");
            return;
        }

        boolean postionFound = false;

        // starting location of player '@'
        int[] initialPlayerPosition = getPlayerLocation(maze);

        // stack for DFS backtracking
        Stack<int[]> stack = new Stack<>();
        stack.push(initialPlayerPosition);


        // !solved > not found exit
        while (!stack.isEmpty() && !postionFound) {
            //here will pop position to explore or search
            int[] current = stack.pop();

            int row = current[0] - 1;
            int col = current[1] - 1;
            //check for the current cell
            char value = maze[row][col];
            //if fo the cell E market @
            if (value == 'E') {
                maze[row][col] = '@';
                postionFound = true;
            } else {

                // mark visited
                if (maze[row][col] == '0' || maze[row][col] == '@') {
                    maze[row][col] = '@';
                }

                displayMaze(maze);
                Thread.sleep(1000);

                if (maze[row][col] != 'E') {
                    maze[row][col] = '-';
                }

                // directions which are around the @:
                int[][] directions = {
                        {row - 1, col}, // up
                        {row + 1, col}, // down
                        {row, col - 1}, // left
                        {row, col + 1}  // right
                };

                for (int i = 0; i < directions.length; i++) {

                    int r = directions[i][0];
                    int c = directions[i][1];

                    if (r >= 0 && r < maze.length && c >= 0 && c < maze[0].length) {

                        if (maze[r][c] == '0' || maze[r][c] == 'E') {
                            stack.push(new int[]{r + 1, c + 1});
                        }
                    }
                }
            }
        }

        if (postionFound) {
            System.out.println("Great maze solved");
        } else {
            System.out.println("No path found");
        }
        //System.out.println("Maze is ready");
        displayMaze(maze);
    }

    // display maze
    public static void displayMaze(char[][] maze) {
        for (int rowMaze = 0; rowMaze < maze.length; rowMaze++) {
            for (int colMaze = 0; colMaze < maze[rowMaze].length; colMaze++) {
                System.out.printf("%c", maze[rowMaze][colMaze]);
            }
            System.out.println();
        }
        System.out.println();
    }

    // read maze from file:
    public static char[][] loadAndGetMaze() {
        char[][] maze;
        Path mazePath = null;

        try {
            mazePath = Path.of(MazeGame.class.getResource(relativePath).toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
        try {
            //read input as one string
            String fileContent = Files.readString(mazePath);
            //split string to lines, so each line become one row
            String[] lineOfFile = fileContent.split("\\R");
            //determinate length of maze, find num of col
            int lineLength = lineOfFile[0].length();
            //create or load maze into 2D array:
            maze = new char[lineOfFile.length][lineLength];
            //convert each line to char using toCharArray()
            for (int rowMaze = 0; rowMaze < lineOfFile.length; rowMaze++) {
                maze[rowMaze] = lineOfFile[rowMaze].toCharArray();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return maze;
    }

    // validate maze
    public static boolean validateMaze(char[][] maze) {

        int start = 0;
        int exit = 0;

        for (int rowMaze = 0; rowMaze < maze.length; rowMaze++) {
            for (int colMaze = 0; colMaze < maze[0].length; colMaze++) {
                //value> store the current cell value
                char value = maze[rowMaze][colMaze];

                if (value == '@') start++;
                if (value == 'E') exit++;
                //check cell border in the next step
                boolean isBorder =
                        rowMaze == 0 ||
                                rowMaze == maze.length - 1 ||
                                colMaze == 0 ||
                                colMaze == maze[0].length - 1;

                if (isBorder && value != '1' && value != '@' && value != 'E') {
                    return false;
                }
            }
        }

        return start == 1 && exit == 1;
    }

    //search for the location of '@':
    public static int[] getPlayerLocation(char[][] maze) {
        for (int rowMaze = 0; rowMaze < maze.length; rowMaze++) {
            for (int colMaze = 0; colMaze < maze[0].length; colMaze++) {
                if (maze[rowMaze][colMaze] == '@') {
                    return new int[]{rowMaze + 1, colMaze + 1};
                }
            }
        }
        return null;
    }

    public static void printEmptyLines() {

        for (int count = 0; count < 18; count++) {
            System.out.println();
        }
    }

    //store path to the maze file in constant variable "relativePath":
    public static final String relativePath = "./data.txt";
}


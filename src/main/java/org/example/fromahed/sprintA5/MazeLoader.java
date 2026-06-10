package org.example.fromahed.sprintA5;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class MazeLoader {

    public static Maze loadAndGetMaze(String filePath) {
        char[][] maze;
        try {
            Path mazePath = Path.of(filePath);
            //read input as one string
            String fileContent = Files.readString(mazePath);
            //split string to lines, so each line become one row
            String[] lines = fileContent.split("\\R");
            //ensure that square(n*n)
            int n = lines.length;
            for (String line : lines) {
                if (line.length() != n) {
                    return null;
                }
            }

            maze = new char[n][n];

            for (int i = 0; i < n; i++) {
                maze[i] = lines[i].toCharArray();
            }
        } catch (IOException e) {
            return null;
        }
        return new Maze(maze);
    }

    public static boolean validateMaze(Maze mazeObj) {
        char[][] maze = mazeObj.getGrid();
        int n = maze.length;

        int startCount = 0;
        int exitCount = 0;

        for (int rowMaze = 0; rowMaze < n; rowMaze++) {
            for (int colMaze = 0; colMaze < n; colMaze++) {
                //value> store the current cell value
                char value = maze[rowMaze][colMaze];


                //check cell border in the next step
                boolean isBorder =
                        rowMaze == 0 ||
                                rowMaze == n - 1 ||
                                colMaze == 0 ||
                                colMaze == n - 1;

                if (value == '@') {
                    startCount++;
                    if (!isBorder)
                        return false;
                }

                if (value == 'E') {
                    exitCount++;
                    if (!isBorder)
                        return false;
                }
            }
        }

        return startCount == 1 && exitCount == 1;
    }

    //search for the location of '@':
    public static Position getPlayerLocation(Maze mazeObj) {
        char[][] maze = mazeObj.getGrid();

        for (int rowMaze = 0; rowMaze < maze.length; rowMaze++) {
            for (int colMaze = 0; colMaze < maze[0].length; colMaze++) {
                if (maze[rowMaze][colMaze] == '@') {
                    return new Position(rowMaze, colMaze);//0-based now
                }
            }
        }
        return null;
    }
}




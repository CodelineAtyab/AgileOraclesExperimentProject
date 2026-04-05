package org.example.frommaryam.maryamSprint4;
import java.util.Stack;
import java.util.List;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.IOException;

///////// Escaping the Maze [#] /////////

public class mazeEscapeRun {

    // Maze Glossary:
    // 1 = closed way
    // - = open road
    // @ = the agent
    // 0 = footprint
    // E = the exit


    public static void main(String[] args) throws IOException {

        //read maze file
        char[][] maze = readMaze("maze.txt");

        int rows = maze.length;
        int cols = maze[0].length;

        //find start position
        int startRow = 0, startColm = 0;
        boolean found = false;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                if (!found && maze[i][j] == '@') {
                    startRow = i;
                    startColm = j;
                    found = true;
                }
            }
        }

        Stack<int[]> stack = new Stack<>();
        boolean[][] visited = new boolean[rows][cols];
        stack.push(new int[]{startRow, startColm});
        boolean exitFound = false;

        while (!stack.isEmpty() && !exitFound) {

            //print stack
            System.out.print("stack:");
            for (int i = 0; i < stack.size(); i++) {
                int[] s = stack.get(i);
                System.out.print("(" + s[0] + "," + s[1] + ")");
            }
            System.out.println();

            int[] current = stack.pop();
            int r = current[0];
            int c = current[1];
            System.out.println("moved:(" + r + "," + c + ")");

            if (!visited[r][c]) {
                visited[r][c] = true;

                if (maze[r][c] == 'E') {
                    exitFound = true;
                }
                else {
                    maze[r][c] = '@';
                    printMaze(maze);
                    maze[r][c] = '0';

                    //push neighbors
                    //east
                    if (c + 1 < cols && !visited[r][c + 1] && (maze[r][c + 1] == '-' || maze[r][c + 1] == 'E')) {
                        stack.push(new int[]{r, c + 1});
                    }
                    //south
                    if (r + 1 < rows && !visited[r + 1][c] && (maze[r + 1][c] == '-' || maze[r + 1][c] == 'E')) {
                        stack.push(new int[]{r + 1, c});
                    }
                    //north
                    if (r - 1 >= 0 && !visited[r - 1][c] && (maze[r - 1][c] == '-' || maze[r - 1][c] == 'E')) {
                        stack.push(new int[]{r - 1, c});
                    }
                    //west
                    if (c - 1 >= 0 && !visited[r][c - 1] && (maze[r][c - 1] == '-' || maze[r][c - 1] == 'E')) {
                        stack.push(new int[]{r, c - 1});
                    }
                }
            }
        }

        if (exitFound) {
            System.out.println("exit found :)");
        }
        else {
            System.out.println("exit not found");
        }
    }

    //read file by convert to array
    public static char[][] readMaze(String filename) throws IOException {
        List<String> lines = Files.readAllLines(Path.of(filename));

        int rows = lines.size();
        int cols = lines.get(0).length();

        char[][] maze = new char[rows][cols];

        for (int i = 0; i < rows; i++) {
            maze[i] = lines.get(i).toCharArray();
        }
        return maze;
    }

    //show current maze state
    public static void printMaze(char[][] maze) {
        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[i].length; j++) {
                System.out.print(maze[i][j]);
            }
            System.out.println();
        }
        System.out.println();

        //short delay
        try { Thread.sleep(500); } catch (InterruptedException e) {}
    }
}


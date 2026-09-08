package org.example.fromalharithalkindi.s4;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Stack;

public class S4EscapeTheMaze {
    public static void main(String[] args) throws InterruptedException {
        //  << solving task 86ex1htew - Escape the Maze >>

        ArrayList<String> lines = new ArrayList<>();
        File myObj = new File("C:\\Users\\Codeline\\IdeaProjects\\AgileOraclesExperimentProject\\src\\main\\java\\org\\example\\fromalharithalkindi\\s4\\maze.txt");

        try (Scanner myReader = new Scanner(myObj)) {
            while (myReader.hasNextLine()) {
                lines.add(myReader.nextLine());
            }
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        int rows = lines.size();
        int cols = lines.get(0).length();
        char[][] maze = new char[rows][cols];

        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                maze[i][j] = lines.get(i).charAt(j);

        int startRow = -1, startCol = -1;

        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                if (maze[i][j] == '@') {
                    startRow = i;
                    startCol = j;
                }

        if (startRow == -1 || startCol == -1) {
            System.out.println("Start point \"@\" NOT FOUND....");
            return;
        }

        Stack<int[]> stack = new Stack<>();
        stack.push(new int[]{startRow, startCol});
        boolean[][] visited = new boolean[rows][cols];
        visited[startRow][startCol] = true;

        int[][] direction = {{-1, 0}, {1, 0}, {0, -1}, {0, 1}};
        boolean found = false;

        char[][] display = new char[rows][cols];
        for (int i = 0; i < rows; i++)
            display[i] = maze[i].clone();

        int step = 0;

        while (!stack.isEmpty()) {
            int[] current = stack.pop();
            int rr = current[0];
            int cc = current[1];


            display[rr][cc] = '@';

            System.out.println("---- Step " + (++step) + " | Current: [" + rr + "][" + cc + "] ----");
            printMaze(display, rows, cols);
            System.out.println();
            Thread.sleep(3000);


            if (maze[rr][cc] != 'E' && maze[rr][cc] != 'e') {
                display[rr][cc] = '0';
            }

            if (maze[rr][cc] == 'E' || maze[rr][cc] == 'e') {
                System.out.println("Exit found at [" + rr + "][" + cc + "] !!!");
                found = true;
                break;
            }

            for (int[] dir : direction) {
                int newRow = rr + dir[0];
                int newCol = cc + dir[1];

                if (newRow >= 0 && newRow < rows &&
                        newCol >= 0 && newCol < cols &&
                        maze[newRow][newCol] != '1' &&
                        !visited[newRow][newCol]) {
                    visited[newRow][newCol] = true;
                    stack.push(new int[]{newRow, newCol});
                }
            }
        }

        if (!found) {
            System.out.println("there is No  exit on the maze.");
        }
    }

    static void printMaze(char[][] display, int rows, int cols) {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(display[i][j]);
            }
            System.out.println();
        }
    }
}
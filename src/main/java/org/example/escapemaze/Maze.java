package org.example.escapemaze;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class Maze {

    public static void main(String[] args) {
        try {
            File file = new File("src/main/java/org/example/escapemaze/themaze");

            if (!file.exists()) {
                System.out.println("Board file not found!");
                return;
            }

            // Load maze
            List<char[]> lines = new ArrayList<>();
            BufferedReader br = new BufferedReader(new FileReader(file));

            String line;
            while ((line = br.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    lines.add(line.toCharArray());
                }
            }
            br.close();

            int rows = lines.size();
            int cols = lines.get(0).length;

            char[][] maze = new char[rows][cols];
            for (int i = 0; i < rows; i++) {
                maze[i] = lines.get(i);
            }

            int startR = -1, startC = -1;

            // Find start
            for (int i = 0; i < rows; i++) {
                for (int j = 0; j < cols; j++) {
                    if (maze[i][j] == '@') {
                        startR = i;
                        startC = j;
                    }
                }
            }

            if (startR == -1) {
                System.out.println("Start '@' not found.");
                return;
            }

            // Replace @ by 0
            maze[startR][startC] = '0';

            boolean[][] visited = new boolean[rows][cols];
            Stack<int[]> stack = new Stack<>();
            stack.push(new int[]{startR, startC});

            while (!stack.isEmpty()) {

                int[] pos = stack.peek();
                int r = pos[0];
                int c = pos[1];

                visited[r][c] = true;

                // Print maze
                for (int i = 0; i < rows; i++) {
                    for (int j = 0; j < cols; j++) {
                        if (i == r && j == c) {
                            System.out.print("@ ");
                        } else {
                            System.out.print(maze[i][j] + " ");
                        }
                    }
                    System.out.println();
                }

                System.out.println();
                Thread.sleep(300);

                // Goal check
                if (maze[r][c] == 'E') {
                    System.out.println("Goal reached!");
                    return;
                }

                // Move: Right, Down, Left, Up
                if (c + 1 < cols && !visited[r][c + 1] &&
                        (maze[r][c + 1] == '0' || maze[r][c + 1] == 'E')) {

                    stack.push(new int[]{r, c + 1});

                } else if (r + 1 < rows && !visited[r + 1][c] &&
                        (maze[r + 1][c] == '0' || maze[r + 1][c] == 'E')) {

                    stack.push(new int[]{r + 1, c});

                } else if (c - 1 >= 0 && !visited[r][c - 1] &&
                        (maze[r][c - 1] == '0' || maze[r][c - 1] == 'E')) {

                    stack.push(new int[]{r, c - 1});

                } else if (r - 1 >= 0 && !visited[r - 1][c] &&
                        (maze[r - 1][c] == '0' || maze[r - 1][c] == 'E')) {

                    stack.push(new int[]{r - 1, c});

                } else {
                    stack.pop();
                }
            }

            System.out.println("No path found.");

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
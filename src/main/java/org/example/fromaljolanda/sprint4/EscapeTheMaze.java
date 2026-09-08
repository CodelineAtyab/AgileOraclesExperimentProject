package org.example.fromaljolanda.sprint4;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.Stack;

public class EscapeTheMaze {

    public static void main(String[] args) {
        try {
            // Load maze
            String path = "src/main/java/org/example/fromaljolanda/sprint4/maze.txt";
            List<String> lines = Files.readAllLines(new File(path).toPath());
            int n = lines.size();
            char[][] maze = new char[n][n];
            for (int i = 0; i < n; i++) {
                maze[i] = lines.get(i).toCharArray();
            }

            // Validate maze
            if (!validateMaze(maze)) {
                System.out.println("Invalid maze format!");
                return;
            }

            // Find start
            int[] start = new int[2];
            boolean foundStart = false;
            for (int i = 0; i < n && !foundStart; i++) {
                for (int j = 0; j < n; j++) {
                    if (maze[i][j] == '@') {
                        start[0] = i;
                        start[1] = j;
                        foundStart = true;
                        break;
                    }
                }
            }

            // DFS with stack (FILO)
            Stack<int[]> stack = new Stack<>();
            boolean[][] visited = new boolean[n][n];
            stack.push(start);
            visited[start[0]][start[1]] = true;

            while(!stack.isEmpty()) {
                int[] curr = stack.peek();
                printMaze(maze, stack);
                Thread.sleep(1000);

                if (maze[curr[0]][curr[1]] == 'E') {
                    System.out.println("Maze solved!");
                    printPath(stack);
                    return;
                }

                int row = curr[0];
                int col = curr[1];
                boolean moved = false;

                // ===== Try Right =====
                if (!moved && col+1<n && !visited[row][col+1] && (maze[row][col+1]=='0'||maze[row][col+1]=='E')) {
                    stack.push(new int[]{row,col+1});
                    visited[row][col+1] = true;
                    moved = true;
                }

                // ===== Try Left =====
                if (!moved && col-1>=0 && !visited[row][col-1] && (maze[row][col-1]=='0'||maze[row][col-1]=='E')) {
                    stack.push(new int[]{row,col-1});
                    visited[row][col-1] = true;
                    moved = true;
                }

                // ===== Try Down =====
                if (!moved && row+1<n && !visited[row+1][col] && (maze[row+1][col]=='0'||maze[row+1][col]=='E')) {
                    stack.push(new int[]{row+1,col});
                    visited[row+1][col] = true;
                    moved = true;
                }

                // ===== Try Up =====
                if (!moved && row-1>=0 && !visited[row-1][col] && (maze[row-1][col]=='0'||maze[row-1][col]=='E')) {
                    stack.push(new int[]{row-1,col});
                    visited[row-1][col] = true;
                    moved = true;
                }
                if (!moved) {
                    stack.pop(); // dead end → backtrack
                }
            }
        }
        catch (IOException e) {
            System.out.println("File not found!");
        }
        catch (InterruptedException e) {
        }
    }

// -----------------------------------------------------------------------------------------
    // ================= Validate Maze =================
    static boolean validateMaze(char[][] maze) {
        int n = maze.length;
        int start = 0;
        int end = 0;

        for(int i = 0; i < n; i++){
            if(maze[i].length != n) {
                return false; // must be square
            }
            for(int j = 0; j < n; j++){
                char check = maze[i][j];
                if(check == '@') {
                    start++;
                }
                if(check == 'E') {
                    end++;
                }
                // borders must be '1'
                if(i == 0 || j == 0 || i == n-1 || j == n-1) {
                    if(check != '1' && check != '@' && check != 'E') {
                        return false;
                    }
                }
            }
        }
        return start == 1 && end == 1;
    }

// -----------------------------------------------------------------------------------------
    // ================= Print Maze =================
    static void printMaze(char[][] maze, Stack<int[]> stack) {
        boolean[][] path = new boolean[maze.length][maze.length];
        for(int[] p : stack) {
            path[p[0]][p[1]] = true;
        }
        System.out.println();
        for(int i = 0; i < maze.length; i++){
            for(int j = 0; j < maze.length; j++){
                if (path[i][j]) {
                    System.out.print('@');
                }
                else {
                    System.out.print(maze[i][j]);
                }
            }
            System.out.println();
        }
        System.out.println();
        System.out.println("----------");
    }

// -----------------------------------------------------------------------------------------
    // ================= Print Path =================
    static void printPath(Stack<int[]> stack) {
        System.out.print("Path: ");
        for(int i = 0; i < stack.size(); i++) {
            int[] p = stack.get(i);
            System.out.print("(" + (p[0] + 1) + "," + (p[1] + 1) + ")");
            if(i != stack.size() - 1) {
                System.out.print(" -> ");
            }
        }
        System.out.println();
    }
}
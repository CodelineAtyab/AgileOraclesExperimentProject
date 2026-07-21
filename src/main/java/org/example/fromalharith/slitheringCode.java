package org.example.fromalharith;

import java.io.*;
import java.util.*;

public class slitheringCode {
    public static void main(String[] args) throws IOException {

        String filePath = "src/main/java/org/example/fromalharith/board.txt";

        // Read file and remove spaces into logical grid
        List<String> lines = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                lines.add(line.replace(" ", "")); // remove spaces for grid
            }
        }

        int rows = lines.size();
        int cols = lines.get(0).length();

        char[][] grid = new char[rows][cols];

        for (int r = 0; r < rows; r++) {
            grid[r] = lines.get(r).toCharArray();
        }

        // Initialize snake queue
        Queue<int[]> snake = new LinkedList<>();
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (grid[r][c] == 'o') {
                    snake.offer(new int[]{r, c});
                }
            }
        }

        Scanner sc = new Scanner(System.in);

        // directions
        String[] dirs = {"up", "down", "left", "right"};
        int[][] moves = {
                {-1, 0}, // up
                {1, 0},  // down
                {0, -1}, // left
                {0, 1}   // right
        };

        while (true) {
            for (int r = 0; r < rows; r++) {
                for (int c = 0; c < cols; c++) {
                    System.out.print(grid[r][c] + " ");
                }
                System.out.println();
            }

            System.out.print("Enter your move!: ");
            String direction = sc.next();
            int steps = sc.nextInt();

            for (int step = 0; step < steps; step++) {
                int[] head = ((LinkedList<int[]>) snake).getLast();
                int newRow = head[0];
                int newCol = head[1];

                for (int i = 0; i < dirs.length; i++) {
                    if (direction.equals(dirs[i])) {
                        newRow += moves[i][0];
                        newCol += moves[i][1];
                    }
                }

                // check board
                if (newRow < 0 || newRow >= rows || newCol < 0 || newCol >= cols) {
                    System.out.println("Hit the wall!");
                    break;
                }

                // move snake
                snake.offer(new int[]{newRow, newCol});
                grid[newRow][newCol] = 'o';

                int[] tail = snake.poll();
                grid[tail[0]][tail[1]] = '-';
            }
        }
    }
}

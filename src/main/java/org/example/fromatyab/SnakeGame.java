package org.example.fromatyab;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class SnakeGame {
    private static final int SIZE = 15;
    private char[][] map = new char[SIZE][SIZE];
    private Queue<int[]> snakeBody = new LinkedList<>();
    private int headRow, headCol;

    public SnakeGame() {
        initializeMap();
        initializeSnake();
    }

    private void initializeMap() {
        for (int i = 0; i < SIZE; i++) {
            for (int j = 0; j < SIZE; j++) {
                map[i][j] = '.';
            }
        }
    }

    private void initializeSnake() {
        // Initial snake position in the middle, horizontal
        headRow = SIZE / 2;
        headCol = (SIZE / 2) + 2; // Head is at the right end of the 5 units

        for (int i = -2; i <= 2; i++) {
            int row = SIZE / 2;
            int col = (SIZE / 2) + i;
            snakeBody.offer(new int[]{row, col});
            map[row][col] = 'o';
        }
    }

    public void displayMap() {
        System.out.print("  ");
        for (int j = 0; j < SIZE; j++) System.out.print("- ");
        System.out.println();
        for (int i = 0; i < SIZE; i++) {
            System.out.print("| ");
            for (int j = 0; j < SIZE; j++) {
                System.out.print(map[i][j] + " ");
            }
            System.out.println("|");
        }
        System.out.print("  ");
        for (int j = 0; j < SIZE; j++) System.out.print("- ");
        System.out.println();
    }

    public void clearDisplay() {
        // As requested, use a for loop to make space before asking for another input
        for (int i = 0; i < 30; i++) {
            System.out.println();
        }
    }

    public boolean move(String direction) {
        int nextRow = headRow;
        int nextCol = headCol;

        switch (direction.toLowerCase()) {
            case "up":
                nextRow--;
                break;
            case "down":
                nextRow++;
                break;
            case "left":
                nextCol--;
                break;
            case "right":
                nextCol++;
                break;
            default:
                System.out.println("Invalid move! Use up, down, left, right or exit.");
                return true;
        }

        // Check boundaries
        if (nextRow < 0 || nextRow >= SIZE || nextCol < 0 || nextCol >= SIZE) {
            System.out.println("Ouch! You hit a wall at (" + nextRow + "," + nextCol + "). Game Over.");
            return false;
        }

        // Remove tail first to allow moving into the spot the tail just vacated
        int[] tail = snakeBody.poll();
        if (tail != null) {
            map[tail[0]][tail[1]] = '.';
        }

        // Check if hitting itself
        if (map[nextRow][nextCol] == 'o') {
            System.out.println("Ouch! You hit yourself. Game Over.");
            return false;
        }

        // Update snake head
        headRow = nextRow;
        headCol = nextCol;
        snakeBody.offer(new int[]{headRow, headCol});
        map[headRow][headCol] = 'o';

        return true;
    }

    public static void main(String[] args) {
        SnakeGame game = new SnakeGame();
        Scanner scanner = new Scanner(System.in);
        boolean running = true;

        while (running) {
            game.clearDisplay();
            System.out.println("--- Snake Game (15x15) ---");
            game.displayMap();
            System.out.print("Enter move (up/down/left/right/exit): ");
            String input = scanner.nextLine().trim();

            if (input.equalsIgnoreCase("exit")) {
                running = false;
            } else {
                running = game.move(input);
            }
        }
        System.out.println("Thanks for playing!");
        scanner.close();
    }
}

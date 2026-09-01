package org.example.fromrima.snakegame;

import java.util.Arrays;
//this class to print the game UI(user interface)
public class GameRenderer {
    //This method to print entire game board
    public static void printBoard() {
        //2d grid for height (col) and width (row)
        char[][] board = new char[GameMap.height][GameMap.width];
        //fill the map grid with - , 0 , *
        for (int index = 0; index < GameMap.height; index++)
            Arrays.fill(board[index], '-');

        for (Position part : Snake.snake)
            board[part.row][part.col] = 'O';

        board[GameMap.foodX][GameMap.foodY] = '*';

        System.out.println("\n--- SNAKE GAME ---");
        System.out.println("Score: " + GameMap.score);

        for (int row = 0; row < GameMap.height; row++) {
            for (int col = 0; col < GameMap.width; col++) {
                System.out.print(board[row][col] + " ");
            }
            System.out.println();
        }
    }
}
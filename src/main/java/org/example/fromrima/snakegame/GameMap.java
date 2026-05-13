package org.example.fromrima.snakegame;

import java.util.Random;

public class GameMap {
    public static int width = 15;
    public static int height = 15;
    public static int score = 0;

    public static int foodX;
    public static int foodY;

    public static Random random = new Random();
    //init Snake Game , if data file map.txt not exist
    public static void initGame() {
        score = 0;
        Snake.snake.clear();
        Snake.snakeSet.clear();
        //snake position when starting new game
        int row = 7;
        for (int col = 5; col <= 9; col++) {
            Position position = new Position(row, col);
            Snake.snake.addFirst(position);
            Snake.snakeSet.add(position);
        }

        placeFood();
    }
    //this method to generate food in grid
    public static void placeFood() {
        while (true) {
            foodX = random.nextInt(height);
            foodY = random.nextInt(width);
            //to make sure the generate food not in the snake position
            if (!Snake.snakeSet.contains(new Position(foodX, foodY)))
                break;
        }
    }
}
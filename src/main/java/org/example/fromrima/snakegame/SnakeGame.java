package org.example.fromrima.snakegame;
import java.util.Scanner;
//main class of SnakeGame
public class SnakeGame {
    public static void main(String[] args) {
        //To loads saved game data (SCORE, FOOD, SNAKE) from map.txt file
        MapLoader.loadFromFile(FilePersistence.filePath);
        //if the map.txt file is empty, then start new
        if (Snake.snake.isEmpty()) {
            GameMap.initGame();
        }
        Scanner scanner = new Scanner(System.in);
        while (true) {
            GameRenderer.printBoard();
            String direction;
            int steps = 1; //by default
            while (true) {
                System.out.println("Enter move (up,down, left and right): ");
                String input = scanner.nextLine().trim().toLowerCase(); //convert direction input to lowercase
                String[] parts = input.split("\\s+"); //split the input into 2 parts by spaces
                //check / validate user input
                if (parts.length == 0 || parts[0].isEmpty()) {
                    System.out.println(" Invalid input!");
                    continue;
                }
                //[0] is direction
                //[1] is steps
                //direction and steps validation
                direction = parts[0];
                if (!(direction.equals("up") || direction.equals("down")
                        || direction.equals("left") || direction.equals("right"))) {
                    System.out.println(" Invalid direction!");
                    continue;
                }
                if (parts.length > 1) {
                    try {
                        steps = Integer.parseInt(parts[1]);
                        if (steps <= 0) {
                            System.out.println(" Steps must be >= 1.");
                            continue;
                        }
                    } catch (NumberFormatException e) {
                        System.out.println(" Invalid number.");
                        continue;
                    }
                }
                break;
            }
            //convert and set directions
            Direction.setDirection(direction);
            for (int step = 0; step < steps; step++) {
                if (!Snake.moveSnake()) {
                    System.out.println("The only open directions are: " + Snake.getOpenDirections());
                    break;
                }
                FilePersistence.saveGame(); //saving updates position for SCORE, FOOD, SNAKE
            }
        }
    }
}
package org.example.fromibrahim.oop.snake.move;

import java.io.IOException;

/*
# Main entry point. Validates CLI arguments and coordinates all classes

# Abstraction: each step (load, print, move, save) is one method call on another class

 */
public class SnakeGame {
    public static void main(String[] argumentsInput) throws IOException {

        //  Part 1. Validate CLI user input

        //  Validate Arguments
        if (argumentsInput.length == 0) {
            System.out.println("Error: Must run via command line with: java MoveSnake.java <direction> <steps> ");
            return;
        }

        if (argumentsInput.length > 2) {
            System.out.println("Error: Input Must Be java MoveSnake <direction> <steps>");
            return;
        }

        //  Validate Direction
        String direction = argumentsInput[0].toLowerCase(); // So That it Can Read Any Letter
        if (!direction.equals("up") &&
                !direction.equals("down") &&
                !direction.equals("left") &&
                !direction.equals("right")) {
            System.out.println("Error: Invalid Direction.");
            return;
        }

        //  Validate Steps
        int steps = 1; // Default if User Don't Specify
        if (argumentsInput.length == 2) {
            try {
                steps = Integer.parseInt(argumentsInput[1]);

                if (steps <= 0) {
                    System.out.println("Error: Steps Must be a Positive Integer.");
                    return;
                }

            } catch (NumberFormatException e) {
                System.out.println("Error: Steps Must be a Valid Integer.");
                return;
            }
        }

        //  Part 2. Read File & Load Map

        String filePath = "src/main/java/org/example/fromibrahim/data/map";
        MapLoader mapLoader = new MapLoader(filePath);
        if (!mapLoader.readAndLoadMap()) {
            return; // mapLoader already printed the error message
        }

        GameMap gameMap = mapLoader.getGameMap();
        Snake snake = mapLoader.getSnake();
        GameRenderer renderer = new GameRenderer(gameMap);
        FilePersistence filePersistence = new FilePersistence(filePath);
        //  Printing Direction and Steps
        renderer.printDirectionAndSteps(direction, steps);
        //  Printing the grid map
        renderer.printMap("The map:");


        //  Part 3. Moving the Snake

        // Repeating Number of Steps Entered
        for (int step = 0; step < steps; step++) {

            //  Get the current head position
            Position head = snake.getHead();

            //  Copy the current Head Position Into Row and Column
            int newRow = head.getRow();
            int newCol = head.getCol();

            if (direction.equals("up")) {
                newRow--;
            } else if (direction.equals("down")) {
                newRow++;
            } else if (direction.equals("left")) {
                newCol--;
            } else if (direction.equals("right")) {
                newCol++;
            }

            //  If Outside the map
            if (!gameMap.isInsideMap(newRow, newCol)) {
                System.out.println("Invalid move! Out of boundaries.");
                renderer.printValidDirections(head);
                return;
            }

            //  Collision
            if (snake.isHittingItself(newRow, newCol)) {
                System.out.println("Collision! Snake hit itself.");
                renderer.printValidDirections(head);
                return;
            }
            // Moving: Add Head & Remove Tail
            Position oldTail = snake.moveSnake(newRow, newCol);
            gameMap.setSnakeCell(newRow, newCol);
            gameMap.clearSnakeCell(oldTail.getRow(), oldTail.getCol());
        }

        //  Part 4. Save map to file & Print it
        filePersistence.saveMapToFile(gameMap, snake);

        //  Print map
        renderer.printMap("Updated Map:");

        // Print the snake order so the user can see it in the console too
        renderer.printSnakeOrder(filePersistence.buildSnakeOrderLine(snake));
    }
}
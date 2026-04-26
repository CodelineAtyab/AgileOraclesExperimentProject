package org.example.fromibrahim.oop.snake.move;

/*
 # Prints the map

 # Abstraction: it uses getMapCopy() to get a snapshot of the map for printing,
                so it never reads the real internal grid directly.
 # This class only handles printing and it never changes map data or touches files.

 */

public class GameRenderer {
    private final GameMap gameMap;

    public GameRenderer(GameMap gameMap) {
        this.gameMap = gameMap;
    }
    //  Prints the map
    public void printMap(String label) {
        System.out.println("\n" + label);
        // Uses getMapCopy() so the renderer never accesses the internal grid directly
        char[][] mapCopy = gameMap.getMapCopy();
        for (int row = 0; row < gameMap.getRows(); row++) {
            for (int col = 0; col < gameMap.getColumns(); col++) {
                System.out.print(mapCopy[row][col] + " ");
            }
            System.out.println();
        }
    }

    //  Printing Direction and Steps entered by the user
    public void printDirectionAndSteps(String direction, int steps) {
        System.out.println("Direction: " + direction);
        System.out.println("Steps: \n" + steps);
    }

    //  Prints the snake order line so the user can see it
    public void printSnakeOrder(String snakeOrderLine) {
        System.out.println("Snake order (tail to head): " + snakeOrderLine);
    }

    //  Validate directions (Inside Map or Not Part of Snake)
    public void printValidDirections(Position head) {
        int row = head.getRow();
        int col = head.getCol();
        int rows = gameMap.getRows();
        int columns = gameMap.getColumns();
        char[][] mapCopy = gameMap.getMapCopy();

        System.out.print("Valid directions: ");

        if (row > 0 && mapCopy[row - 1][col] != 'o')           System.out.print("up ");
        if (row < rows - 1 && mapCopy[row + 1][col] != 'o')    System.out.print("down ");
        if (col > 0 && mapCopy[row][col - 1] != 'o')           System.out.print("left ");
        if (col < columns - 1 && mapCopy[row][col + 1] != 'o') System.out.print("right ");

        System.out.println();
    }
}
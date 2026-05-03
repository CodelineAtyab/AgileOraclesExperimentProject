package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.util.LinkedList;

public class Snake {

    // Stores the snake body in order
    private LinkedList<Position> body;

    // Creates a Snake object using existing body list
    public Snake(LinkedList<Position> body) {
        this.body = body;
    }

    //Returns the full snake object
    public LinkedList<Position> getBody() {
        return body;
    }

    // Returns the snake head
    public Position getHead() {
        return body.getLast();
    }

    // Returns the snake tail
    public Position getTail() {
        return body.getFirst();
    }

    // Creates a Snake object by scanning the map for 'o' characters.
    public static Snake fromMap(GameMap gameMap) {
        LinkedList<Position> snakeBody = new LinkedList<>();
        char[][] grid = gameMap.getGrid();

        for (int row = 0; row < grid.length; row++) {
            for (int col = 0; col < grid[row].length; col++) {
                if (grid[row][col] == 'o') {
                    snakeBody.add(new Position(row, col));
                }
            }
        }
        return new Snake(snakeBody);
    }

    // Calculate where the new head position will be (Snake Head position)
    public Position calculateNewHead(Direction direction) {
        Position currentHead = getHead();

        int newRow = currentHead.row;
        int newCol = currentHead.col;

        if (direction.getValue().equals(Direction.UP)) {
            newRow--;
        } else if (direction.getValue().equals(Direction.DOWN)) {
            newRow++;
        } else if (direction.getValue().equals(Direction.LEFT)) {
            newCol--;
        } else if (direction.getValue().equals(Direction.RIGHT)) {
            newCol++;
        }
        return new Position(newRow, newCol);
    }
}

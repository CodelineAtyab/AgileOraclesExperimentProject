package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.util.LinkedList;

public class Snake {

    // Stores the snake body in order
    private LinkedList<Position> body;

    // Creates a Snake object using existing body list
    public Snake(LinkedList<Position> body) {
        this.body = body;
    }

    // Prints the directions that the snake can safely move to.
    public void printAllowedDirections(GameMap gameMap) {
        System.out.println("Allowed open directions:");

        boolean hasAllowedDirection = false;

        if (isDirectionAllowed(new Direction(Direction.UP), gameMap)) {
            System.out.println("- up");
            hasAllowedDirection = true;
        }

        if (isDirectionAllowed(new Direction(Direction.DOWN), gameMap)) {
            System.out.println("- down");
            hasAllowedDirection = true;
        }

        if (isDirectionAllowed(new Direction(Direction.LEFT), gameMap)) {
            System.out.println("- left");
            hasAllowedDirection = true;
        }

        if (isDirectionAllowed(new Direction(Direction.RIGHT), gameMap)) {
            System.out.println("- right");
            hasAllowedDirection = true;
        }

        if (!hasAllowedDirection) {
            System.out.println("No safe moves available.");
        }
    }

    // Checks one direction before the snake actually moves.
    private boolean isDirectionAllowed(Direction direction, GameMap gameMap) {
        Position possibleNewHead = calculateNewHead(direction);
        return !hasCollision(possibleNewHead, gameMap);
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
    // Collision Check
    public boolean hasCollision (Position newHead, GameMap gameMap) {
        return hasWallCollision (newHead, gameMap) || hasSelfCollision(newHead);
    }

    // Check if the new head position is outside the map boundaries
    private boolean hasWallCollision(Position newHead, GameMap gameMap){
        return !gameMap.isInside(newHead);
    }

    // Check if the new head position would hit the snake body
    private boolean hasSelfCollision(Position newHead){
        Position currentTail = getTail();
        boolean movingIntoTail = currentTail.row == newHead.row && currentTail.col == newHead.col;

        for (int i = 1; i < body.size(); i++){
            Position part = body.get(i);

            if (part.row == newHead.row && part.col == newHead.col && ! movingIntoTail) {
                return true;
            }
        }
        return false;
    }
    // Move the snake one step on the map
    public void move (Position newHead, GameMap gameMap) {
        Position oldTail = body.removeFirst ();
        gameMap.clearCell(oldTail);

        // Adds new head to the end of the snake
        body.addLast (newHead);

        //Place the new head on the visible map
        gameMap.placeSnake(newHead);
    }
}


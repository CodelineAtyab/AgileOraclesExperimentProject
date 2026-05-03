package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.util.LinkedList;

public class Snake {

    private LinkedList<Position> body;

    public Snake(LinkedList<Position> body) {
        this.body = body;
    }

    public LinkedList<Position> getBody() {
        return body;
    }

    public Position getHead() {
        return body.getLast();
    }

    public Position getTail() {
        return body.getFirst();
    }

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
}
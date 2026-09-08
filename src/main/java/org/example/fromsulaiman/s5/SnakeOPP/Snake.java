package org.example.fromsulaiman.s5.SnakeOPP;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

 // Represents the snake body from tail (index 0) to head (last index)

public class Snake {
    private final LinkedList<Position> body;

    public Snake(List<Position> bodyParts) {
        this.body = new LinkedList<>(bodyParts);
    }

    public List<Position> getBody() {
        return new ArrayList<>(body);
    }

    public Position getHead() {
        return body.getLast();
    }

    public Position getTail() {
        return body.getFirst();
    }

     // Calculates the next head position using wrap-around map logic
    public Position getNextHeadPosition(Direction direction, GameMap gameMap) {
        Position rawNext = getHead().next(direction);
        int wrappedRow = Math.floorMod(rawNext.getRow(), gameMap.getRows());
        int wrappedCol = Math.floorMod(rawNext.getCol(), gameMap.getCols());
        return new Position(wrappedRow, wrappedCol);
    }

     // Returns false when next move would collide with snake body.

    public boolean canMove(Direction direction, GameMap gameMap) {
        Position nextHead = getNextHeadPosition(direction, gameMap);

        // Moving into the current tail is valid because tail leaves in same step
        for (Position part : body) {
            if (part.equals(nextHead) && !part.equals(getTail())) {
                return false;
            }
        }
        return true;
    }

     // Moves snake by one step. If grow=true, tail is not removed.

    public boolean moveOneStep(Direction direction, GameMap gameMap, boolean grow) {
        if (!canMove(direction, gameMap)) {
            return false;
        }

        Position nextHead = getNextHeadPosition(direction, gameMap);
        if (!grow) {
            body.removeFirst();
        }
        body.addLast(nextHead);
        return true;
    }

     // Helper method used when a move is blocked, to show valid directions.

    public List<Direction> getAllowedDirections(GameMap gameMap) {
        List<Direction> allowed = new ArrayList<>();
        for (Direction direction : Direction.values()) {
            if (canMove(direction, gameMap)) {
                allowed.add(direction);
            }
        }
        return allowed;
    }
}

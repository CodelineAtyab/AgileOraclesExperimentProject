package org.example.fromibrahim.oop.snake.move;

import java.util.LinkedList;

/*
 # Record the snake's body as a list of positions from tail to head.
 # Handles moving the snake and checking if it hit itself.

 # Encapsulation: the snakeBody list is private : other classes cannot add,
                  remove, or reorder segments directly.
 # This class only manages the snake's body
 */

public class Snake {
    // Read & Ordered tail to head: first index is the tail, last index is the head
    private final LinkedList<Position> snakeBody;

    public Snake(LinkedList<Position> snakeBody) {
        this.snakeBody = snakeBody;
    }

    // Returns the head position
    public Position getHead() {
        return snakeBody.getLast();
    }

    // Returns the tail position
    public Position getTail() {
        return snakeBody.getFirst();
    }

    // Returns true if the snake has at least one segment
    public boolean isSnakeFound() {
        return !snakeBody.isEmpty();
    }

    // Checks if the given row and col overlap with any part of the snake body
    // Used to detect a self-collision before moving
    public boolean isHittingItself(int row, int col) {
        for (Position segment : snakeBody) {
            if (segment.getRow() == row && segment.getCol() == col) {
                return true;
            }
        }
        return false;
    }

    // Moves the snake one step:
    //   - Adds the new head position at the end of the list
    //   - Removes the old tail from the front of the list
    // Returns the old tail so the caller can clear that cell on the map
    public Position moveSnake(int newRow, int newCol) {
        //  Add new Head
        snakeBody.addLast(new Position(newRow, newCol));
        //  Remove old Tail
        Position oldTail = snakeBody.removeFirst();
        return oldTail;
    }

    // Returns the full body list: used by FilePersistence to build the save line
    public LinkedList<Position> getSnakeBody() {
        return snakeBody;
    }
}

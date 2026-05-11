package org.example.fromrima.snakegame;
import java.util.*;
//SnakeMovement + Collision detection + save Directions
public class Snake {
    public static Deque<Position> snake = new LinkedList<>(); //store snake body
    public static Set<Position> snakeSet = new HashSet<>(); //to fast lookUp for the checking collision
    //snake movement
    public static boolean moveSnake() {
        Position head = snake.peekFirst(); //get current head position
        //calculate and add the next position
        int newRow = head.row + Direction.directionX;
        int newCol = head.col + Direction.directionY;
        //wrap round
        //vertical
        if(newRow < 0) {
            newRow = GameMap.height - 1;
        }
        else if (newRow >= GameMap.height){
            newRow = 0;
        }
        //horizontal
        if (newCol < 0){
            newCol = GameMap.width - 1;
        }
        else if (newCol >= GameMap.width){
            newCol = 0;
        }
        Position newHead = new Position(newRow, newCol);
        //check the collision
        if (snakeSet.contains(newHead)){
            return false;
            }
        snake.addFirst(newHead);
        snakeSet.add(newHead);
        //if the snake eats/ reach food
        if (newRow == GameMap.foodX && newCol == GameMap.foodY) {
            GameMap.score++; //increase score
            GameMap.placeFood(); //generate food
        } else {
            //if the snake not reach food
            Position tail = snake.removeLast();
            snakeSet.remove(tail); //remove tail of snake only
        }

        return true;
    }
    //this method would return safe directions for snake movement
    public static String getOpenDirections() {
        Position head = snake.peekFirst(); //get head position
        List<String> openDirection = new ArrayList<>(); //store safe moves
        //check and applying the wrap round for each direction
        //up
        int nextUpRow = head.row - 1;
        int nextUpCol = head.col;
        if (nextUpRow < 0) nextUpRow = GameMap.height - 1;
        if (!snakeSet.contains(new Position(nextUpRow, nextUpCol))) openDirection.add("UP");
        //down
        int nextDownRow = head.row + 1;
        int nextDownCol = head.col;
        if (nextDownRow >= GameMap.height) nextDownRow = 0;
        if (!snakeSet.contains(new Position(nextDownRow, nextDownCol))) openDirection.add("DOWN");
        //left
        int nextLeftRow = head.row;
        int nextLeftCol = head.col - 1;
        if (nextLeftCol < 0) nextLeftCol = GameMap.width - 1;
        if (!snakeSet.contains(new Position(nextLeftRow, nextLeftCol))) openDirection.add("LEFT");
        //right
        int nextRightRow = head.row;
        int nextRightCol = head.col + 1;
        if (nextRightCol >= GameMap.width) nextRightCol = 0;
        if (!snakeSet.contains(new Position(nextRightRow, nextRightCol))) openDirection.add("RIGHT");
        //if the move not safe
        if (openDirection.isEmpty()) return "NONE";

        return String.join(", ", openDirection);
    }
}

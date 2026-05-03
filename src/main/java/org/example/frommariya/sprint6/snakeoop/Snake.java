package org.example.frommariya.sprint6.snakeoop;

import java.util.LinkedList;
import java.util.List;

public class Snake {
    public LinkedList<Position> snakeBody;
    public Direction currDirection;

    public Snake(){
        this.snakeBody=new LinkedList<>();
        this.currDirection =Direction.RIGHT;

    }

    public void initializing(List<Position> positions){
        snakeBody.clear();
        snakeBody.addAll(positions); //Head is at the end

    }

    public void initializeCenter(GameMap gameMap){
        snakeBody.clear();
        int rowCenter = gameMap.getRows()/2;
        int colStart = (gameMap.getColumns()/2)-2;

        for(int x=0;x<5;x++){
            Position position =new Position(rowCenter,colStart+x);
            snakeBody.add(position);
            gameMap.placeSnake(position);
        }
        currDirection=Direction.RIGHT;

    }

    public Position getSnakeHead(){
        return
                snakeBody.getLast();
    }

    public Position getSnakeTail(){
        return
                snakeBody.getFirst();

    }

    public List<Position> getSnakeBody(){
        return new LinkedList<>(snakeBody);

    }

    public boolean movement(Direction direction,GameMap gameMap){
        Position newSnakeHead=getSnakeHead().movement(direction);

        if(!gameMap.isValidPosition(newSnakeHead)){
            return false;
        }

        if(gameMap.isSnakeBody(newSnakeHead) && !newSnakeHead.equals(getSnakeTail())){
            return false;
        }

        // Moving the head
        snakeBody.addLast(newSnakeHead);
        gameMap.placeSnake(newSnakeHead);

        // Removing the tail
        Position oldSnakeTail = snakeBody.removeFirst();
        gameMap.clearCells(oldSnakeTail);

        currDirection = direction;
        return true;

    }

    public List<Direction> getValidMovement(GameMap gameMap){
        List<Direction> validMovement =new java.util.ArrayList<>();
        for(Direction direction: Direction.values()){
            Position test = getSnakeHead().movement(direction);

            if(gameMap.isValidPosition(test) && (!gameMap.isSnakeBody(test) || test.equals(getSnakeTail()))){
                validMovement.add(direction);
            }
        }
return validMovement;
    }

    public int getSnakeLength(){
        return snakeBody.size();
    }

    public Direction getcurrDirection(){
        return currDirection;
    }
}

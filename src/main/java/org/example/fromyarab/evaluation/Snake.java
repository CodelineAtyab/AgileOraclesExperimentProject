package org.example.fromyarab.evaluation;

import java.util.ArrayList;
import java.util.List;

public class Snake {
    private List<Position> body;
    private Direction direction;

    public Snake(int startX, int startY) {
        body = new ArrayList<>();
        body.add(new Position(startX, startY));
        body.add(new Position(startX - 1, startY));
        body.add(new Position(startX - 2, startY));
        direction = Direction.RIGHT;
    }

    public List<Position> getBody() {
        return body;
    }

    public Direction getDirection() {
        return direction;
    }

    public void setDirection(Direction direction) {
        this.direction = direction;
    }

    public Position getHead() {
        return body.get(0);
    }

    public void move() {
        Position head = getHead();
        Position newHead = new Position(head.getX(), head.getY());

        switch (direction) {
            case UP -> newHead.setY(head.getY() - 1);
            case DOWN -> newHead.setY(head.getY() + 1);
            case LEFT -> newHead.setX(head.getX() - 1);
            case RIGHT -> newHead.setX(head.getX() + 1);
        }

        body.add(0, newHead);
        body.remove(body.size() - 1);
    }

    public void grow() {
        Position tail = body.get(body.size() - 1);
        body.add(new Position(tail.getX(), tail.getY()));
    }

    public boolean collidesWith(Position position) {
        return body.contains(position);
    }

    public boolean collidesWithSelf() {
        Position head = getHead();
        for (int i = 1; i < body.size(); i++) {
            if (head.equals(body.get(i))) {
                return true;
            }
        }
        return false;
    }
}

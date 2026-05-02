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
}
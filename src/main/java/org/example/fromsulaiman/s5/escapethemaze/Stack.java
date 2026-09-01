package org.example.fromsulaiman.s5.escapethemaze;

import java.util.ArrayList;


public class Stack<T> {

    private final ArrayList<T> items = new ArrayList<>();

    public void push(T value) {
        items.add(value);
    }

    public T pop() {
        if (isEmpty()) {
            throw new IllegalStateException("Stack is empty");
        }
        return items.remove(items.size() - 1);
    }

    public T peek() {
        if (isEmpty()) {
            throw new IllegalStateException("Stack is empty");
        }
        return items.get(items.size() - 1);
    }

    public boolean isEmpty() {
        return items.isEmpty();
    }

    public int size() {
        return items.size();
    }

    /** Bottom of stack is index 0; top is index size - 1. */
    public T get(int index) {
        return items.get(index);
    }
}

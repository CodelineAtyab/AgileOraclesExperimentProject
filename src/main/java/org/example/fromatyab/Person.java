package org.example.fromatyab;

import java.util.ArrayList;
import java.util.Objects;

public class Person {
    private String name;
    private Integer age;

    private ArrayList<Object> itemsToEat;

    public Integer tellAge() {
        return age;
    }

    public String tellName() {
        return name;
    }

    public void eat() {

    }

    public Object sellEatingItem(Object itemToSell) {
        return itemToSell;
    }

    public void buyPizzaSlice(Object itemToEat) {
        itemsToEat.add(itemToEat);
    }
}

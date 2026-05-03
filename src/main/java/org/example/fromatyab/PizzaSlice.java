package org.example.fromatyab;

import java.util.ArrayList;

public class PizzaSlice {
    private String size;
    private String TemperatureState;
    public ArrayList<Topping> toppings;

    public String getSize() {
        return size;
    }

    public String getTemperatureState() {
        return TemperatureState;
    }

    public String getFlavor() {
        // Process all toppings
        for (Topping currTopping: toppings) {
            // Something here
        }
        return "-----";
    }
}

package org.example.frommariya.sprint6.internqueuesorteroop;

import java.util.ArrayList;
import java.util.List;

public class InputParser {
    public List<Integer> Parse(String inp) throws IllegalArgumentException{
        if(inp==null || inp.trim().isEmpty()){
            throw new IllegalArgumentException("The Input Can't be Empty");
        }
        String[] Part=inp.split(",");
        List<Integer> integers = new ArrayList<>();
        for(String part:Part){
            try{
                integers.add(Integer.parseInt(part.trim()));
            } catch (NumberFormatException e){
                throw new IllegalArgumentException("Invalid integer "+part);
            }
        }
        return integers;
    }
}
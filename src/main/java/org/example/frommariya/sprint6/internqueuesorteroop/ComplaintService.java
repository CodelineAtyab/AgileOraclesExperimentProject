package org.example.frommariya.sprint6.internqueuesorteroop;

import java.util.List;
import java.util.stream.Collectors;

public class ComplaintService {
    public SortStrategy sortStrategy;


    public void setSortStrategy(SortStrategy sortStrategy){
        this.sortStrategy = sortStrategy;
    }

    public List<Integer> complaintService(List<Integer> num){
        if(num.size()<3){
            throw new RuntimeException("Error, Number should be more than 3");
        }
        sortStrategy.sort(num);


        return num.stream().limit(3).collect(Collectors.toList()); //Return the lowest 3
    }
}

package org.example.frommariya.sprint6.internqueuesorteroop;

import java.util.List;
import java.util.Scanner;

public class InternQueueSort {
    public static void main(String[] args){
        InputParser inputParser = new InputParser(); //Front InputParser.java

        ComplaintService complaintService = new ComplaintService(); //From ComplaintService.java

        SortStrategy sortStrategy = new SelectionSort(); //From SortStrategy.java

        String inpData="";

        if(args.length >0){
            for(String argument:args){
                if(argument.equals("--algorithm=bubble")){
                    sortStrategy=new BubbleSort();
                }else if(!argument.startsWith("--")){
                    inpData=argument;
                }
            }
        }
        if(inpData.isEmpty()){
            Scanner sca=new Scanner(System.in);
            System.out.println("Enter Numbers (comma-separated)");
            inpData=sca.nextLine();
        }
        try {
            List<Integer> d=inputParser.Parse(inpData);
            complaintService.setSortStrategy(sortStrategy);
            List<Integer> res=complaintService.complaintService(d);

            System.out.println("The Three Lowest Integers or Priorities: "+res);
        } catch (Exception e){
            System.err.println(e.getMessage());
            System.exit(1);
        }
    }
}

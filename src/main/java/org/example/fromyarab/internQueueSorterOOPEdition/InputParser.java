package org.example.fromyarab.internQueueSorterOOPEdition;

public class InputParser {

    // function to check and parse the input list and return an integer list
    public static int[] parseInput(String sPriorities){
        String [] tempPriorities = sPriorities.split(",");
        int[] priorities = new int[tempPriorities.length];
        if (tempPriorities.length<3){
            System.out.println("The list should contains at least 3 elements separated by comma(,)!.");
            return new int[0];
        }
        if (validateInput(tempPriorities)){
            for (int i=0; i< tempPriorities.length; i++){
                priorities[i] = Integer.parseInt(tempPriorities[i]);
            }
            return priorities;
        }
        else {
            System.out.println("The list should contains only integers!.");
            return new int[0];
        }
    }

    // function to check a list if it is a list of integers
    public static boolean validateInput(String[] tempPriorities){
        for (String priority : tempPriorities) {
            if (!isNumeric(priority)) {
                return false;
            }
        }
        return true;
    }

    // function to check if the string is integer
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }
}

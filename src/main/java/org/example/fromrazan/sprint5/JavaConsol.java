package org.example.fromrazan.sprint5;
import java.util.Scanner;


//strategy interface
interface SortSrategy{
    void sort(int[] arr);

}




//selecion sort

class SelecionSort implements SortSrategy{
        public void sort(int[] arr){
            for (int i = 0; i < arr.length - 1; i++){
                int minIndex = i;

                for (int j= i + 1; j < arr.length; j++) {
                    if (arr[j] < arr[minIndex]){
                        minIndex = j;
                    }
                }


                int temp = arr[minIndex];
                arr[minIndex] = arr[i];
                arr[i] = temp;
            }
        }
}


// bubble sort

class BubbleSort implements SortSrategy {
    public void sort(int [] arr) {
        boolean swapped;

        for (int i = 0; i < arr.length -1; i++){
            swapped = false;

         for (int k = 0; k < arr.length - i - 1; k++){
             if (arr[k] > arr[k +1]){


                 int temp = arr[k];
                 arr[k] = arr[k + 1];
                 arr[k + 1] = temp;

                 swapped = true;

             }
         }

         if (! swapped)break;
        }
    }
}


//input parser
class InputParser {
    public static int[] parseInput(String input) {
        if (input == null || input.trim().isEmpty()) {
            throw new IllegalArgumentException("THE INPUT IS EMPTY : ");
        }

        String [] parts = input.split(",");
        int [] numbers = new int[parts.length];

       for (int i = 0; i < parts.length; i++){

           try {
               numbers[i] = Integer.parseInt(parts[i].trim());
           } catch (NumberFormatException e){
               throw new IllegalArgumentException(" THE VALUE IS INCORRECT" + parts[i]);
           }
       }

       return numbers;

    }

}
//service layer

class ComplaintService {

    private SortSrategy srategy;

    public ComplaintService(SortSrategy srategy){
        this.srategy = srategy;
    }

    public int [] getLowestThree(int[] data){

        if (data.length > 3){
            throw new IllegalArgumentException("YOU MUST ENTER THREE NUMBER AT LEAST ");
        }


        srategy.sort(data);

        return new int[]{data[0], data[1], data[2]};
    }
}

//JavaConsol class


public class JavaConsol {

    public static void main(String[] args){

     String input = null;
     String algorithm = "selection"; //default

        //read CLI arguments

        for(String arg : args){
            if (arg.startsWith("--algorithm--")){
                algorithm = arg.split("=")[1].toLowerCase();
            } else {
                input = arg;
            }
        }

//STIDIN ---> use if there are no input

        if(input == null){
            Scanner scanner = new Scanner(System.in);
            System.out.println("enter the numbers: ");
            input = scanner.nextLine();
        }

        try {
            //parse
            int [] numbers = InputParser.parseInput(input);


            //choose algorithm
            SortSrategy srategy;

            if (algorithm.equals("bubble")){
                srategy = new BubbleSort();

            } else {
                srategy =  new SelecionSort();

            }

            //srvice
            ComplaintService service = new ComplaintService(srategy);

            int [] result = service.getLowestThree(numbers);

            //output
            System.out.println("");
             for (int num : result) {
                 System.out.println(num);

             }


        } catch (IllegalArgumentException e){
            System.out.println("error: "+ e.getMessage());
        }

    }

}

package org.example.frommariya.sprint5;
import java.util.Scanner;

public class QueueSort {
    public static String algorithm = "Selection";
    public static String inputOfRow = "";

    public static void main(String[] args ){
        for (String argument:args){
            if(argument.startsWith("--algorithm=")){ //The beginning of the CMD should start with --algorithm
                algorithm= argument.split("=")[1].toLowerCase();
            }
            else
            {
                inputOfRow=argument;
            }
        }
        // Input Handling
        if(inputOfRow.isEmpty()){
            Scanner scanner = new Scanner(System.in);
            if(scanner.hasNextLine()){
                inputOfRow = scanner.nextLine();
            }
            scanner.close();
        }
        int[] inputNumbers = integerParse(inputOfRow);

        if(inputNumbers.length <3){
            System.out.println("At least 3 Integers required!");
            return;
        }

        if(algorithm.equals("Selection")){
            selectionSort(inputNumbers); //if selection written in CMD, selectionSort method will execute
        }
        else if(algorithm.equals("bubble")){
            bubbleSort(inputNumbers); //if bubble written in CMD, bubbleSort method will execute
        }
        //output executing
        printSorting(inputNumbers);
    }

    public static void selectionSort(int[] array){
        // selectionSort execution
        int numbers = array.length;

        for(int x=0; x<numbers-1;x++){
            int minimumIndex = x;
            // find the index of the smallest number of the array
            for(int y=x+1;y<numbers;y++){
                if(array[y]<array[minimumIndex]){
                    minimumIndex=y;
                }
            }
            int temp = array[minimumIndex];
            array[minimumIndex] = array[x];
            array[x] = temp;
        }

    }

    public static void bubbleSort(int[] array){

        int number = array.length;

        for(int j=0;j<number-1;j++){
            for(int k=0;k<number-j-1;k++){
                if(array[k]>array[k+1]){
                    int temp = array[k];
                    array[k] = array[k+1];
                    array[k+1] = temp;
                }
            }
        }
    }

    public static int[] integerParse(String input){
        try{
            String cleaning = input.replace("[","").replace("]","").replace(" ","");
            String[] symbols = cleaning.split(",");
            int[] numbers = new int[symbols.length];
            for(int x =0; x<symbols.length;x++){
                numbers[x] = Integer.parseInt(symbols[x]);
            }
            return numbers;
        }
        catch (NumberFormatException e){
            System.out.println("Error: Integers are only acceptable");
            System.exit(0);
            return new int[0];
        }

    }
    public static void printSorting(int[] array){
        //sorting output printing
        for(int x=0;x<array.length;x++){
            System.out.print(array[x]);
            if(x<array.length -1){
                System.out.println(" ");
            }
        }
        System.out.println();

        System.out.print("The Intern queue is: ");
        for(int x=0;x<3;x++){
            System.out.print(array[x]);
            if(x<2){
                System.out.print(", ");
            }
        }
        System.out.println();
    }
}
//To see the result:
//Run javac src/main/java/org/example/frommariya/sprint5/QueueSort.java
//java -cp src/main/java org.example.frommariya.sprint5.QueueSort 1,7,2,3,4 --algorithm=selection
//java -cp src/main/java org.example.frommariya.sprint5.QueueSort 1,7,2,3,4 --algorithm=bubble


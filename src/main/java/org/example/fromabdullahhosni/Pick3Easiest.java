package org.example.fromabdullahhosni;



import java.util.ArrayList;
import java.util.Arrays;


public class Pick3Easiest {
    public static void main(String[] args) {

        if (args.length == 0) {
            System.out.println("Usage: java InternQueueSorter <comma-separated-numbers>");
        }

        if (!args[0].equals("selectionsort") && !args[0].equals("bubblesorting")){
            System.out.println("Please enter <method> correctly");
        }

        //Declaring
        ArrayList<Integer> dataset =  new ArrayList<Integer>();
        String method = "";
        int[] numbers;

        try {
            //taking input
            method = args[0].toLowerCase().trim();
            //split the complains List {6,8,10,3,43,2}
            String[] split = args[1].split(",");
            //convert them to int
            numbers = new int[split.length];

            for (int i = 0 ;i < split.length; i++ ){
                numbers[i] = Integer.parseInt(split[i].trim());
                dataset.add(numbers[i]);
            }


        } catch (NumberFormatException e){
            System.out.println("Error: Please provide only integers separated by commas.");
        }

    //        int[] proiortyComplains = parseInt(args[1]);

        //Print: before sorting
        System.out.println("Dataset : " + dataset);
//        for (int print : dataset){
//            System.out.printf("%\n", dataset.get(print));
//        }

        // process: choose either bubblesorting or selection sorting
        if (method.equals("selectionsort"))
        {
            SelectionSort(dataset);
        }
        else if (method.equals("bubblesort"))
        {
            BubbleSort(dataset);
        }



        //Print: after sorting
        System.out.printf("After %s: %s\n",method,dataset);
        //print 3 lowest priority
        int[] low3Prior = new int[]{dataset.get(0),dataset.get(1), dataset.get(2) };
        System.out.println("three lowest priority are " + Arrays.toString(low3Prior));


//        for (int print : dataset){
//            System.out.printf("%d\n", dataset.get(print));
//        }

//
//        int size;
//        size = dataset.size();
//
//        for (int i = 0 ; i < size;i++ ){
//            int minimum = i;
//            for (int j = 0 ;j < size; j++ ){
//                //sorting condition: find the minimum
//                if (dataset.get(j) < dataset.get(minimum))
//                {
//                    minimum = j;
//                }
//
//                //Swapping elements: after finding the minimum now implement it on arraylist
//                int temporary = dataset.get(minimum);
//                dataset.get(minimum) = dataset.get(i);


            }


    public static void SelectionSort(ArrayList<Integer> dataset){

        int size;
        size = dataset.size();

        for (int i = 0 ; i < size - 1 ;i++ ) {
            int minimum = i;
            for (int j = i + 1 ; j < size; j++)
            {
                //sorting condition: find the minimum
                if (dataset.get(j) < dataset.get(minimum)) {
                    minimum = j;
                }
            }

            //Swapping elements: after finding the minimum now implement it on arraylist
            int temp = dataset.get(minimum);
            dataset.set(minimum, dataset.get(i));
            dataset.set(i, temp);
        }
    }

    public static void BubbleSort(ArrayList<Integer> dataset){

        int size;
        size = dataset.size();

        for (int i = 1 ; i < size ;i++ ) {
            for (int j = 0 ; j <= ( size - i -1); j++) {
                //sorting condition: find the minimum
                if (dataset.get(j) < dataset.get(j+1))
                {
                    //Swapping elements: after finding the minimum now implement it on arraylist
                    int temp = dataset.get(j);
                    dataset.set(j, dataset.get(j+1));
                    dataset.set(j+1, temp);
                }
            }
        }

    }
}


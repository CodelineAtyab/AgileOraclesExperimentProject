package org.example.fromabdullahhosni;



import java.util.ArrayList;

public class Pick3Easiest {
    public static void main(String[] args) {

        if (args.length == 0) {
            System.out.println("Usage: java InternQueueSorter <comma-separated-numbers>");
        }

        //Declaring
        ArrayList<Integer> dataset =  new ArrayList<Integer>();
        String method;
        int[] numbers = null;

        try {
            //taking input

            //split the complains List {6,8,10,3,43,2}
            String[] split = args[1].split(",");
            //convert them to int
            numbers = new int[split.length];
            for (int i = 0 ;i < split.length; i++ ){
                numbers[i] = Integer.parseInt(split[i].trim());
            }


        } catch (NumberFormatException e){
            System.out.println("Error: Please provide only integers separated by commas.");
        }


    //        int[] proiortyComplains = parseInt(args[1]);

        dataset.add();


        //Print: before sorting
        for (int print : dataset){
            System.out.printf("%d", dataset.get(print));
        }

        SelectionSort(dataset);
        //Print: before sorting
        for (int print : dataset){
            System.out.printf("%d", dataset.get(print));
        }

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

        for (int i = 0 ; i < size;i++ ) {
            int minimum = i;
            for (int j = 0; j < size; j++) {
                //sorting condition: find the minimum
                if (dataset.get(j) < dataset.get(minimum)) {
                    minimum = j;
                }

                //Swapping elements: after finding the minimum now implement it on arraylist
                int temporary = dataset.get(minimum);
                dataset.get(minimum) = dataset.get(i);
                dataset.get(i) = temporary;

            }
        }

    }
}


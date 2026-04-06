package org.example.fromabdullahhosni;



import java.util.ArrayList;

public class Pick3Easiest {
    public static void main(String[] args) {

        ArrayList<Integer> dataset =  new ArrayList<Integer>();



        String sorting;
        args[1] = new int[]{}
    //        int[] proiortyComplains = parseInt(args[1]);
        dataset.add(proiortyComplains);


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


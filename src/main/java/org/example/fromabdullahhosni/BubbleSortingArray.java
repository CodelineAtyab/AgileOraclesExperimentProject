package org.example.fromabdullahhosni;

public class BubbleSortingArray {
    public static void main(String[] args){
        int[] ArrayPriorities = new int[] {5, 5, 10, 10, 4, 1, 2, 9, 7, 8};

        for  (int i = 0 ; i < ArrayPriorities.length; i++){
            for (int j = 0;j < ArrayPriorities.length - 1; j++){
                // now bubble sorting
                if (ArrayPriorities[j] < ArrayPriorities[j + 1] ){

                    //swaping index
                    int tempStorage = ArrayPriorities[j];
                    ArrayPriorities[j] = ArrayPriorities[j + 1];
                    ArrayPriorities[j + 1] = tempStorage;
                }
            }
        }


        // after sorting
        for (int PrintIndext :ArrayPriorities ){
            System.out.printf("%d ", PrintIndext);
        }

    }
}

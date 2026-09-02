package org.example.fromrazan.Javaconsol;

public class Sorter {

    public void SelecionSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            int minIndex = i;

            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }


            int temp = arr[minIndex];
            arr[minIndex] = arr[i];
            arr[i] = temp;
        }
    }

    // bubble sort


    public  void BubbleSort(int[] arr) {
        boolean swapped;

        for (int i = 0; i < arr.length - 1; i++) {
            swapped = false;

            for (int j = 0; j < arr.length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {


                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;

                    swapped = true;

                }
            }

            if (!swapped) break;
        }
    }


    // get lowest

    public  int[] getLowestThree(int[] data) {

        if (data.length < 3) {
            throw new IllegalArgumentException("enter at least 3 numbers");
        }

        return new int[]{data[0], data[1], data[2]};
    }
}

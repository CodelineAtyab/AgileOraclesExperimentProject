package org.example.fromyarab.internQueueSorterOOPEdition;

public class ComplaintService {
    // default algorithm
    private String algorithm = "selection";

    // constructor
    public ComplaintService(){
    }

    // setter for algorithm type
    public void setAlgorithm(String algorithm){
        this.algorithm = algorithm;
    }

    // function returns the least 3 complaint priorities
    public int[] getLeastValues(int [] list){
        SortStrategy sorting;
        // creating an object of needed sorting algorithm
        if (algorithm.equals("selection")){
            sorting = new SelectionSort();
        }
        else {
            sorting = new BubbleSort();
        }
        sorting.sort(list);
        return new int[] {list[0],list[1],list[2]};
    }
}

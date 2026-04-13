package org.example.fromyarab.internQueueSorterOOPEdition;

public class ComplaintService {
    private String algorithm = "selection";

    public ComplaintService(){
    }

    public void setAlgorithm(String algorithm){
        this.algorithm = algorithm;
    }

    public int[] getLeastValues(int [] list){
        SortStrategy sorting;
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

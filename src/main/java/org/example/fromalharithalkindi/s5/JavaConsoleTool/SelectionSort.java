package org.example.fromalharithalkindi.s5.JavaConsoleTool;

public class SelectionSort implements SortStrategy {
    @Override
    public void sort(int[] numbers){
        for (int i=0; i<numbers.length-1;i++)
        {
            int minIndex=i;
            for (int j=i+1;j<numbers.length;j++)
            {
                if (numbers[j]<numbers[minIndex])
                {
                    minIndex=j;
                }
            }
            int temp =numbers[minIndex];
            numbers[minIndex]=numbers[i];
            numbers[i]=temp;
        }
    }

}

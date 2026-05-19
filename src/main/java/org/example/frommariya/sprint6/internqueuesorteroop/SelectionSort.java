package org.example.frommariya.sprint6.internqueuesorteroop;

import java.util.List;

public class SelectionSort implements SortStrategy {
    @Override
    public void sort(List<Integer> num){
        int numbers = num.size();
        for(int x=0;x<numbers-1;x++){
            int minimunIndex=x;
            for(int y=x+1;y<numbers;y++){
                if(num.get(y)<num.get(minimunIndex))
                    minimunIndex=y;
            }
            int temp=num.get(minimunIndex);
            num.set(minimunIndex,num.get(x));
            num.set(x,temp);
        }
    }
}

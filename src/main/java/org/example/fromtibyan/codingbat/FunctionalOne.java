package org.example.fromtibyan.codingbat;

import java.util.List;

public class FunctionalOne {

    public List<Integer> doubling(List<Integer> nums) {
        nums.replaceAll(n->n*2);
        return nums;
    }


}

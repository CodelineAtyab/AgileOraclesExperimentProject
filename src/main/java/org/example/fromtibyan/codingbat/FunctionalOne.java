package org.example.fromtibyan.codingbat;

import java.util.List;

public class FunctionalOne {

    public List<Integer> doubling(List<Integer> nums) {
        nums.replaceAll(n->n*2);
        return nums;
    }

    public List<Integer> square(List<Integer> nums) {
        nums.replaceAll(n->n*n);
        return nums;
    }

    public List<String> addStar(List<String> strings) {
        strings.replaceAll(s -> s+"*");
        return strings;
    }


}

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

    public List<String> copies3(List<String> strings) {
        strings.replaceAll(s -> s+s+s);
        return strings;
    }

    public List<String> moreY(List<String> strings) {
        strings.replaceAll(s -> "y" + s + "y");
        return strings;
    }

    public List<Integer> math1(List<Integer> nums) {
        nums.replaceAll(n -> (n+1)*10);
        return nums;
    }

    public List<Integer> rightDigit(List<Integer> nums) {
        nums.replaceAll(n -> n%10);
        return nums;
    }

}

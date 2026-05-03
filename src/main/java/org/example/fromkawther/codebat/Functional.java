package org.example.fromkawther.codebat;

import java.util.List;
import java.util.stream.Collectors;

public class Functional {

    // 1- doubling: Multiplies each integer by 2
    public List<Integer> doubling(List<Integer> nums) {
        return nums.stream()
                .map(n -> n * 2)
                .collect(Collectors.toList());
    }

    // 2- copies3: Returns a list where each string is replaced by 3 copies of itself
    public List<String> copies3(List<String> strings) {
        return strings.stream()
                .map(s -> s + s + s) // Concatenates the string three times
                .collect(Collectors.toList());
    }
// 3-rightDigit :
public List<Integer> rightDigit(List<Integer> nums) {
    return nums.stream()
            .map(n -> n % 10) // Extracts the last digit (e.g., 15 % 10 = 5)
            .collect(Collectors.toList());
}
    //4-:
    public List<Integer> square(List<Integer> nums) {
        return nums.stream()
                .map(n -> n * n)
                .collect(Collectors.toList());
    }
    //5:
    public List<String> moreY(List<String> strings) {
        return strings.stream()
                .map(s -> "y" + s + "y")
                .collect(Collectors.toList());
    }
    //6:

    public List<String> lower(List<String> strings) {
        return strings.stream()
                .map(s -> s.toLowerCase())
                .collect(Collectors.toList());
    }
//7:
public List<String> addStar(List<String> strings) {
    return strings.stream()
            .map(s -> s + "*")
            .collect(Collectors.toList());
}
//8:
public List<Integer> math1(List<Integer> nums) {
    return nums.stream()
            .map(n -> (n + 1) * 10)
            .collect(Collectors.toList());
}
    public List<String> noX(List<String> strings) {
        return strings.stream()
                .map(s -> s.replace("x", ""))
                .collect(Collectors.toList());
    }}




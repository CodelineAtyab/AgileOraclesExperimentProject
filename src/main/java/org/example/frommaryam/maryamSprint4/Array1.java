package org.example.frommaryam.maryamSprint4;

public class Array1 {

    public static boolean firstLast6(int[] nums) {
        boolean six = true;

        if (nums[0]==6 || nums[nums.length - 1] ==6) {
            six = true;
        }
        else{
            six = false;
        }
        return  six;
    }

    //implementation
    public static void main(String[] args) {

        int [] numbers = {1,2,3,4,5,6}; //to test

        System.out.print("[ ");
        for (int i = 0; i < numbers.length; i++) {
            System.out.print(numbers[i] + " ");
        }
        System.out.print("]");
        System.out.print("-> " + firstLast6(numbers)); //using firstLast6()

}
}

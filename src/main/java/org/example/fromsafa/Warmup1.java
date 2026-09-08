package org.example.fromsafa;

public class Warmup1 {

    public static boolean sleepIn(boolean isWeekday, boolean isVacation) {
        return !isWeekday || isVacation;
    }

    public static int diff21(int num) {
        int difference = Math.abs(num - 21);
        return (num > 21) ? difference * 2 : difference;
    }

    public static boolean monkeyTrouble(boolean monkeyA, boolean monkeyB) {
        return monkeyA == monkeyB;
    }

    public static int sumDouble(int num1, int num2) {
        return (num1 == num2) ? (num1 + num2) * 2 : num1 + num2;
    }

    public static boolean makes10(int x, int y) {
        return x == 10 || y == 10 || (x + y == 10);
    }

    public static boolean nearHundred(int number) {
        return Math.abs(100 - number) <= 10 || Math.abs(200 - number) <= 10;
    }

    public static String notString(String text) {
        if (text.startsWith("not")) {
            return text;
        }
        return "not " + text;
    }

    public static String frontBack(String word) {
        if (word.length() <= 1) return word;

        char firstChar = word.charAt(0);
        char lastChar = word.charAt(word.length() - 1);

        return lastChar + word.substring(1, word.length() - 1) + firstChar;
    }

    public static void main(String[] args) {
        System.out.println(sleepIn(false, false));
        System.out.println(diff21(25));
        System.out.println(monkeyTrouble(true, true));
        System.out.println(sumDouble(3, 3));
        System.out.println(makes10(7, 3));
        System.out.println(nearHundred(95));
        System.out.println(notString("apple"));
        System.out.println(frontBack("hello"));
    }
}
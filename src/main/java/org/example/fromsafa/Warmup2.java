package org.example.fromsafa;

public class Warmup2 {

    public static String stringTimes(String text, int n) {
        String result = "";
        for (int i = 0; i < n; i++) {
            result += text;
        }
        return result;
    }

    public static String frontTimes(String word, int n) {
        String front = word.length() < 3 ? word : word.substring(0, 3);
        String result = "";

        for (int i = 0; i < n; i++) {
            result += front;
        }
        return result;
    }

    public static int countXX(String str) {
        int count = 0;

        for (int i = 0; i < str.length() - 1; i++) {
            if (str.charAt(i) == 'x' && str.charAt(i + 1) == 'x') {
                count++;
            }
        }
        return count;
    }

    public static boolean doubleX(String str) {
        int index = str.indexOf('x');

        if (index == -1 || index == str.length() - 1) {
            return false;
        }

        return str.charAt(index + 1) == 'x';
    }

    public static void main(String[] args) {
        System.out.println(stringTimes("Hi", 3));
        System.out.println(frontTimes("Java", 2));
        System.out.println(countXX("xxaxx"));
        System.out.println(doubleX("axxbb"));
    }
}
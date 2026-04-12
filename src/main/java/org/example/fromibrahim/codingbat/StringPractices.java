package org.example.fromibrahim.codingbat;

public class StringPractices {
    public static void main(String[] args){
        // Practice 1
        System.out.println(helloName("Ibrahim"));

        //  Practice 2
        System.out.println(makeAbba("Hi", "Bye"));

        //  Practice 3
        System.out.println(makeTags("i", "Yay"));

    }
    // String 1 - Practice 1
    public static String helloName(String name) {
        return "Hello " + name + "!";
    }

    // String 1 - Practice 2
    public static String makeAbba(String a, String b) {
        return a + b + b + a;
    }

    // String 1 - Practice 3
    public static String makeTags(String tag, String word) {
        return "<" + tag + ">" + word + "</" + tag + ">";
    }

}

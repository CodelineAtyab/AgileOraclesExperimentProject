package org.example.fromabdullahalhadabi;

public class monkeyTrouble {
    public static boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile) {
            return true;
        } else if (!aSmile && !bSmile) {
            return true;
        } else {
            return false;
        }
    }
    public static void main(String[] args) {
        boolean aSmile = true;
        boolean bSmile = false;
        System.out.println(monkeyTrouble(aSmile, bSmile));
    }
}

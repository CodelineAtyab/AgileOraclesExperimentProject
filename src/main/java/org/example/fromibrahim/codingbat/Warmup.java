package org.example.fromibrahim.codingbat;

public class Warmup {

    public static void main(String[] args){

    }

    // WarmUp 1 *
    public static boolean sleepIn(boolean weekday, boolean vacation) {
        if (!weekday || vacation) {
            return true;
        } else {
            return false;
        }
    }

    // WarmUp 1 **
    public boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile || ! aSmile && ! bSmile ){
            return true;
        }
        else {
            return false;
        }
    }
}


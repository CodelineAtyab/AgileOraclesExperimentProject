package org.example.fromaljolanda.sprint7;

public class CodingBat {
    public boolean sleepIn (boolean weekday, boolean vacation) {
        if (!weekday || vacation) {
            return true;
        } else {
            return false;
        }
    }

    public boolean monkeyTrouble (boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile) {
            return true;
        }
        else if (!aSmile && !bSmile) {
            return true;
        }
        else {
            return false;
        }
    }

    public int sumDouble (int a, int b) {
        int sum = a + b;
        if (a == b) {
            sum = sum * 2;
        }
        return sum;
    }

}
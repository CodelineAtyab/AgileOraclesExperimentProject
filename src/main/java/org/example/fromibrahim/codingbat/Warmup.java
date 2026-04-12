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

    // WarmUp 1 ***
    public int sumDouble(int a, int b) {
        int sum = a + b;
        if (a == b){
            return sum = sum * 2;
        } else {
            return sum;
        }
    }

    // WarmUp 1 ****
    public int diff21(int n) {
        if (n <= 21){
            return (21 - n);
        } else {
            return (n - 21)*2;
        }
    }

    // WarmUp 1 *****
    public boolean parrotTrouble(boolean talking, int hour) {
        if (talking &&  (hour < 7 || hour > 20)){
            return true;
        } else {
            return false;
        }
    }

    // WarmUp 1 ******
    public boolean makes10(int a, int b) {
        if (a == 10 || b == 10 || (a+b == 10)){
            return true;
        } else {
            return false;
        }
    }
    // WarmUp 1 *******
    public boolean nearHundred(int n) {
        if ( n >= 90 && n <= 110 || n >= 190 && n <= 210 ) {
            return true;
        } else {
            return false;
        }
    }

}



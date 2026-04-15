package org.example.fromibrahim.codingbat;

public class Warmup {

    public static void main(String[] args){

        boolean canSleep = sleepIn(false, true);
        System.out.println("Sleeping? " + canSleep);

        boolean trouble = monkeyTrouble(true, true);
        System.out.println("Are we in trouble? " + trouble);

        int sum = sumDouble(2, 2);
        System.out.println("Sum double = " + sum);

        int diff = diff21(25);
        System.out.println("Different = " + diff);

        boolean parrot = parrotTrouble(true, 6);
        System.out.println("Parrot trouble? " + parrot);

        boolean isTen = makes10(5, 1);
        System.out.println("Makes 10? " + isTen);

        boolean near = nearHundred(93);
        System.out.println("Near 100? " + near);
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
    public static boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile || ! aSmile && ! bSmile ){
            return true;
        }
        else {
            return false;
        }
    }

    // WarmUp 1 ***
    public static int sumDouble(int a, int b) {
        int sum = a + b;
        if (a == b){
            return sum = sum * 2;
        } else {
            return sum;
        }
    }

    // WarmUp 1 ****
    public static int diff21(int n) {
        if (n <= 21){
            return (21 - n);
        } else {
            return (n - 21)*2;
        }
    }

    // WarmUp 1 *****
    public static boolean parrotTrouble(boolean talking, int hour) {
        if (talking &&  (hour < 7 || hour > 20)){
            return true;
        } else {
            return false;
        }
    }

    // WarmUp 1 ******
    public static boolean makes10(int a, int b) {
        if (a == 10 || b == 10 || (a+b == 10)){
            return true;
        } else {
            return false;
        }
    }
    // WarmUp 1 *******
    public static boolean nearHundred(int n) {
        if ( n >= 90 && n <= 110 || n >= 190 && n <= 210 ) {
            return true;
        } else {
            return false;
        }
    }
}



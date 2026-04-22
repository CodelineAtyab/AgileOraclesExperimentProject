package org.example.fromyarab.codingbat1;

public class WarmUp1 {
    public static String backAround_(String str) {
        String s = str.substring(str.length() - 1);
        return s+str+s;
    }

    public static int close10_(int a, int b) {
        if (Math.abs(a - 10) < Math.abs(b - 10)){
            return a;
        }
        else if (Math.abs(a - 10) > Math.abs(b - 10)){
            return b;
        }
        return 0;
    }

    public String delDel_(String str) {
        if (str.length()>3 && str.substring(1,4).equals("del")){
            return str.substring(0,1) + str.substring(4);
        }
        return str;
    }

    static int diff21_(int n) {
        if (n == 21){
            return 0;
        }
        else if (n < 21){
            return 21-n;
        }
        else{
            return 2*(n-21);
        }
    }

    public String endUp_(String str) {
        if (str.length() > 3){
            return str.substring(0,str.length()-3) + str.substring(str.length()-3,str.length()).toUpperCase();
        }
        return str.toUpperCase();
    }

    public static String everyNth_(String str, int n) {
        String newString = "";
        for (int i = 0 ; i < str.length() ; i=i+n){
            newString = newString + str.charAt(i);
        }
        return newString;
    }

    public String front3_(String str) {
        if (str.length() < 3){
            return str + str + str ;
        }
        return str.substring(0,3) + str.substring(0,3) + str.substring(0,3);
    }

    public String front22_(String str) {
        if (str.length() <2){
            return str + str + str;
        }
        return str.substring(0,2) + str + str.substring(0,2);
    }

    public String frontBack_(String str) {
        if (str.length() <= 1) return str;

        String second = str.substring(1, str.length()-1);

        return str.charAt(str.length()-1) + second + str.charAt(0);
    }

    public static boolean hasTeen_(int a, int b, int c) {
        if (a>12 && a<20 || b>12 && b<20 || c>12 && c<20){
            return true;
        }
        return false;
    }

    public boolean icyHot_(int temp1, int temp2) {
        if ((temp1 < 0 && temp2 > 100) || (temp1 > 100 && temp2 < 0)){
            return true;
        }
        return false;
    }

    public boolean in1020_(int a, int b) {
        return ((a>=10 && a<=20) || (b>=10 && b<=20));
    }

    public boolean in3050_(int a, int b) {
        return ((a>29&&a<41)&&(b>29&&b<41)||(a>39&&a<51)&&(b>39&&b<51));
    }

    public int intMax_(int a, int b, int c) {
        if (a>b && a>c){
            return a;
        }
        if (b>a && b>c){
            return b;
        }
        return c;
    }

    public boolean lastDigit_(int a, int b) {
        boolean con = true;
        while (con){
            if (a<10 && b<10 && a==b){
                return true;
            }
            if (a<10 && b<10 && a!=b){
                con = false;
            }
            a = a%10;
            b = b%10;
        }
        return false;
    }

    public boolean loneTeen_(int a, int b) {
        boolean aTeen = (a >= 13 && a <= 19);
        boolean bTeen = (b >= 13 && b <= 19);

        return (aTeen && !bTeen) || (!aTeen && bTeen);
    }

    public boolean makes10_(int a, int b) {
        return a==10 || b==10 || (a+b) ==10;
    }

    public int max1020_(int a, int b) {
        if (a>=10 && a<=20 && b>=10 && b<=20){
            if (a>b){
                return a;
            }
            return b;
        }
        if (a>=10 && a<=20){
            return a;
        }
        if (b>=10 && b<=20 ){
            return b;
        }
        return 0;
    }

    public static String missingChar_(String str, int n) {

        String front = str.substring(0, n);

        // Start this substring at n+1 to omit the char.
        // Can also be shortened to just str.substring(n+1)
        // which goes through the end of the string.
        String back = str.substring(n+1, str.length());

        return front + back;

    }

    public static boolean mixStart_(String str) {
        if (str.length()>2 && str.substring(1 , 3).equals("ix")){
            return true;
        }
        return false;
    }

    public static boolean monkeyTrouble_(boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile || !aSmile && !bSmile){
            return true;
        }
        return false;
    }

    static boolean nearHundred_(int n) {
        return Math.abs(100 - n)<=10 || Math.abs(200 - n)<=10;
    }

    public String notString_(String str) {
        if (str.length()>2 && str.substring(0,3).equals("not")){
            return str;
        }
        return "not "+str;
    }

    public boolean or35_(int n) {
        if (n%3 == 0 || n%5 == 0){
            return true;
        }
        return false;
    }

    public boolean parrotTrouble_(boolean talking, int hour) {
        if (talking && (hour < 7 || hour > 20)){
            return true;
        }
        return false;
    }

    public boolean posNeg_(int a, int b, boolean negative) {
        if (negative && a<0 && b<0){
            return true;
        }
        if (!negative && ((a<0 && b>-1) || (a>-1 && b<0))){
            return true;
        }
        return false;
    }

    public static boolean startHi_(String str) {
        if (str.length()>1 && str.substring(0 , 2).equals("hi")){
            return true;
        }
        return false;
    }

    public String startOz_(String str) {
        String newString = "" ;
        if (str.length() > 0 && str.charAt(0) == 'o'){
            newString = newString + str.charAt(0);
        }
        if (str.length() > 1 && str.charAt(1) == 'z'){
            newString = newString + str.charAt(1);
        }
        return newString;
    }

    public static boolean stringE_(String str) {
        int count = 0;
        for (int i = 0 ; i < str.length() ; i++){
            if (str.charAt(i) == 'e'){
                count ++;
            }
        }
        if (count > 0 && count < 4){
            return true;
        }
        return false;
    }

    public int sumDouble_(int a, int b) {
        if (a == b){
            return 2*(a+b);
        }
        return a+b;
    }

    public static boolean sleepIn(boolean weekday, boolean vacation) {
        return !weekday || vacation;
    }
}

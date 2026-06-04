package org.example.fromtibyan.codingbat;

public class WarmUp {

    public static void main(String[] args){
        System.out.println(backAround("never"));
        System.out.println(close10(5,6));
        System.out.println(delDel("adelbc"));
        System.out.println(diff21(21));
        System.out.println(endUp("Tibyan"));
        System.out.println(everyNth("Chocolate", 2));
        System.out.println(front3("never"));
        System.out.println(front22("kitten"));
        System.out.println(frontBack("not"));
        System.out.println(hasTeen(15,72,19));
        System.out.println(icyHot(15,72));
        System.out.println(in1020(15,72));
        System.out.println(in3050(50,36));
        System.out.println(intMax(5,6,7));
        System.out.println(lastDigit(15,75));
        System.out.println(loneTeen(15,72));
        System.out.println(makes10(10, 21));
        System.out.println(max1020(50,36));
        System.out.println(missingChar("Kitten", 1));
        System.out.println(mixStart("pix"));
        System.out.println(monkeyTrouble(false, false));
        System.out.println(nearHundred(100));
        System.out.println(notString("not"));
        System.out.println(or35(15));
        System.out.println(parrotTrouble(true, 21));
        System.out.println(posNeg(-12,-42, true));
        System.out.println(sleepIn(false, false));
        System.out.println(startHi("kitten"));
        System.out.println(startOz("bzoo"));
        System.out.println(stringE("HeLLO"));
        System.out.println(sumDouble(21, 13));
    }

    public static String backAround(String str) {
        if (str.length()>=1){
            return str.charAt(str.length()-1)+str+str.charAt(str.length()-1);
        }
        return str;
    }

    public static int close10(int a, int b) {
        int diffa = Math.abs(10-a);
        int diffb = Math.abs(10-b);

        if (diffa < diffb){
            return a;
        }
        if (diffa == diffb){
            return 0;
        }
        return b;
    }

    public static String delDel(String str) {
        if (str.length()>=4 && str.substring(1,4).equals("del")){
            return str.charAt(0)+str.substring(4);
        }
        return str;
    }

    public static int diff21(int n) {
        if (n<=21){
            return 21-n;
        }
        return 2*(n-21);
    }

    public static String endUp(String str) {
        if (str.length()>3){
            String cap = str.substring(str.length()-3);
            String front = str.substring(0,str.length()-3);
            return front +cap.toUpperCase();
        }return str.toUpperCase();
    }

    public static String everyNth(String str, int n) {
        String word = "";
        for (int i=0; i<str.length(); i = i+n){
            word = word + str.charAt(i);
        }
        return word;
    }


    public static String front3(String str) {
        if (str.length()<3){
            return str+str+str;
        }
        str= str.substring(0,3);
        return str+str+str;
    }

    public static String front22(String str) {
        if (str.length()>2){
            return str.substring(0,2)+str+str.substring(0,2);
        }
        return str+str+str;
    }

    public static String frontBack(String str) {
        if (str.length()<=1)
        {
            return str;
        }
        String mid = str.substring(1, str.length()-1);
        return str.charAt(str.length()-1)+mid+str.charAt(0);
    }

    public static boolean hasTeen(int a, int b, int c) {
        if((a>=13&& a<=19) || (b>=13&& b<=19) ||(c>=13&& c<=19)){
            return true;
        }
        return false;
    }

    public static boolean icyHot(int temp1, int temp2) {
        if ((temp1<0 && temp2>100)||(temp1>100 && temp2<0)){
            return true;
        }
        return false;
    }

    public static boolean in1020(int a, int b) {
        if ((a>=10 && a<=20) || (b>=10 && b<=20) ){
            return true;
        }
        return false;
    }

    public static boolean in3050(int a, int b) {
        if (((a>=30 && a <=40) && (b>=30 && b <=40)) ||
                ((a>=40 && a <=50) && (b>=40 && b <=50))){
            return true;
        }
        return false;
    }

    public static int intMax(int a, int b, int c) {
        if (a>b && a>c){
            return a;
        }
        if (a<b && b>c){
            return b;
        }return c;
    }

    public static boolean lastDigit(int a, int b) {
        if ( a%10 == b%10){
            return true;
        }return false;
    }

    public static boolean loneTeen(int a, int b) {
        if ((a>=13 && a<=19) && (b>=13 && b<=19)){
            return false;
        }
        if ((a>=13 && a<=19) || (b>=13 && b<=19)){
            return true;
        }
        return false;
    }

    public static boolean makes10(int a, int b) {
        int sum= a+b;
        if(a==10 || b==10 || sum==10 ){
            return true;
        }
        return false;
    }

    public static int max1020(int a, int b) {
        if ( (a<10 && a>20) && (b<10 && b>20) ){
            return 0;
        }
        if (a<b && (b>=10 && b<=20)){
            return b;
        }
        return a;
    }

    public static String missingChar(String str, int n) {
        if (n>=0 && n<=str.length()-1){
            String front = str.substring(0,n);
            String back = str.substring(n+1, str.length());
            return front + back;
        }return str;
    }

    public static boolean mixStart(String str) {
        if (str.length()>2 && str.substring(1,3).equals("ix")){
            return true;
        }
        return false;
    }

    public static boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        if( aSmile && bSmile || !aSmile && !bSmile ){
            return true;
        }
        return false;
    }

    public static boolean nearHundred(int n) {
        int diff100 = 100-n;
        int diff200 = 200-n;
        if ((Math.abs(diff100)<=10)||(Math.abs(diff200)<=10)){
            return true;
        }
        return false;
    }

    public static String notString(String str) {
        if (str.startsWith("not")){
            return str;
        }
        return "not " + str;
    }

    public static boolean or35(int n) {
        if(n%3==0 || n%5==0){
            return true;
        }
        return false;
    }

    public static boolean parrotTrouble(boolean talking, int hour) {
        if(talking && (hour<7 || hour>20)){
            return true;
        }
        return false;
    }

    public static boolean posNeg(int a, int b, boolean negative) {
        if ( ((a>0 && b<0) || (a<0 && b>0)) ||((a<0 && b<0) && negative)){
            return true;
        }
        return false;
    }

    public static boolean sleepIn(boolean weekday, boolean vacation) {
        if(!weekday || vacation){
            return true;
        }
        return false;
    }

    public static boolean startHi(String str) {
        if (str.startsWith("hi")){
            return true;
        }
        return false;
    }

    public static String startOz(String str) {
        String result = "";
        if ( str.length()>=1 && str.charAt(0)== 'o')
        {
            result = result + str.charAt(0);
        }
        if (str.length()>=2 && str.charAt(1)=='z'){
            result = result + str.charAt(1);
        }
        return result;
    }

    public static boolean stringE(String str) {
        int count = 0;

        for (int i=0; i<str.length(); i++){
            if(str.charAt(i) == 'e'){
                count++;
            }
        }
        if (count >=1 && count<=3){
            return true;
        }return false;
    }

    public static int sumDouble(int a, int b) {
        int sum= a+b;
        if (a==b){
            sum=sum*2;
        }
        return sum;
    }
}

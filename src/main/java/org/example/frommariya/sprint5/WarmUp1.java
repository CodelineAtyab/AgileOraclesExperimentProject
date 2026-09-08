package org.example.frommariya.sprint5;

public class WarmUp1 {
    public static void main(String[] args) {
        //backAround
        System.out.println(backAround("Cat"));
        System.out.println(backAround("hello"));
        System.out.println(backAround("a"));

        //close10
        System.out.println(close10(8, 13)); //8
        System.out.println(close10(5, 11)); //11
        System.out.println(close10(7, 13)); //tie

        //diff21
        System.out.println(Diff21(21));
        System.out.println(Diff21(18));

        //everyNth
        System.out.println(everyNth("abcdesf", 2)); //acef
        System.out.println(everyNth("nbfdsa", 2)); //nfs
        System.out.println(everyNth("poiuyt", 3)); //pu

        //frontBack
        System.out.println(frontBack("star"));
        System.out.println(frontBack("bucket"));

        //hasTeen
        System.out.println(hasTeen(13, 15, 17));
        System.out.println(hasTeen(10, 12, 13));

        //icyHot
        System.out.println(icyHot(120, -1)); // return false
        System.out.println(icyHot(-2, 110)); // return true
        System.out.println(icyHot(3, 129)); // return false

        //int3050
        System.out.println(in3050(30, 21));
        System.out.println(in3050(41, 45));
        System.out.println(in3050(30, 50));

        //IoneTeen
        System.out.println(IoneTeen(14, 88));
        System.out.println(IoneTeen(22, 33));
        System.out.println(IoneTeen(13, 13));

        //lastDigit
        System.out.println(lastDigit(6, 16));
        System.out.println(lastDigit(5, 17));
        System.out.println(lastDigit(2, 112));

        //makes10
        System.out.println(makes10(12, 10));
        System.out.println(makes10(4, 6));
        System.out.println(makes10(5, 7));

        //missingChar
        System.out.println(missingChar("mariya", 4));

        //mixString
        System.out.println(mixStart("mix mm"));
        System.out.println(mixStart("pix nn"));
        System.out.println(mixStart("ix"));

        //monkeyTrouble
        System.out.println(monkeyTrouble(true, true));
        System.out.println(monkeyTrouble(false, false));
        System.out.println(monkeyTrouble(true, false));
        System.out.println(monkeyTrouble(false, true));

        //nearHundred
        System.out.println(nearHundred(93));
        System.out.println(nearHundred(89));

        //or35
        System.out.println(or35(4)); // return false
        System.out.println(or35(19)); // return false
        System.out.println(or35(10)); // return true

        //parrotTrouble
        System.out.println(parrotTrouble(true, 6));
        System.out.println(parrotTrouble(true, 20));
        System.out.println(parrotTrouble(false, 4));

        //posNeg
        System.out.println(posNeg(2, -2, true));
        System.out.println(posNeg(-2, 2, true));
        System.out.println(posNeg(-5, -2, false));

        //sleepIn
        System.out.println(sleepin(false, false));
        System.out.println(sleepin(true, false));
        System.out.println(sleepin(false, true));

        //startHi
        System.out.println(startHi("hi there"));
        System.out.println(startHi("there"));

        //startOz
        System.out.println(startOz("oznhgafds"));
        System.out.println(startOz("nmjhsa"));
        System.out.println(startOz("ossss"));

        //stringE
        System.out.println(stringE("Hee")); //true
        System.out.println(stringE("He")); //true
        System.out.println(stringE("eeee")); //false

        //sumDouble
        System.out.println(sumDouble(4, 3));
        System.out.println(sumDouble(5, 5));

        //notString
        System.out.println(notString("not Mariya")); //not Mariya
        System.out.println(notString("Mariya")); //not Mariya

        //front3
        System.out.println(front3("Mariya")); //MarMarMar
        System.out.println(front3("Nab")); //NabNabNab

        //front22
        System.out.println(front22("muscat")); //mumuscatmu
        System.out.println(front22("om")); //omomom

        //in1020
        System.out.println(in1020(12,11));
        System.out.println(in1020(9,11));

        //delDel
        System.out.println(delDel("Mdelariya")); //Mariya
        System.out.println(delDel("Ndabhan")); //Ndabhan

        //intMax
        System.out.println(intMax(1,5,9)); //9
        System.out.println(intMax(3,11,5)); //11
        System.out.println(intMax(15,11,5)); //15

        //max1020
        System.out.println(max1020(12,18)); //18
        System.out.println(max1020(8,23)); //0
        System.out.println(max1020(15,11)); //15

        System.out.println(endUp("codeline")); //codelINE
        System.out.println(endUp("cod")); //COD


    }


    public static String backAround(String str) {
        char lastCharacter = str.charAt(str.length() - 1);

        return lastCharacter + str + lastCharacter;
    }


    public static int close10(int b, int c) {
        int distanceb = Math.abs(b - 10);
        int distancec = Math.abs(c - 10);

        if (distanceb < distancec) {
            return b; // b is closer to 10
        } else if (distancec < distanceb) {
            return c; // c is closer to 10
        } else {
            return 0;
        }
    }


    public static int Diff21(int n) {
        if (n > 21) {
            return 2 * (n - 21);
        } else {
            return 21 - n;
        }
    }


    public static String everyNth(String str, int n) {
        StringBuilder res = new StringBuilder();

        for (int i = 0; i < str.length(); i += n) {
            res.append(str.charAt(i));
        }
        return res.toString();
    }


    public static String frontBack(String str) {
        if (str.length() <= 1) {
            return str;
        }
        char first = str.charAt(0);
        char last = str.charAt(str.length() - 1);
        return last + str.substring(1, str.length() - 1) + first;

    }


    public static boolean hasTeen(int x, int y, int z) {
        return (x >= 13 && x <= 19) ||
                (y >= 13 && y <= 19) ||
                (z >= 13 && z <= 19);
    }


    public static boolean icyHot(int temprature1, int temprature2) {
        return ((temprature1 < 0 && temprature2 > 100) || (temprature1 < 100 && temprature2 < 0));
    }


    public static boolean in3050(int x, int y) {
        boolean firstRange = (x >= 30 && x <= 40) && (y >= 30 && y <= 40);
        boolean secondRange = (x >= 40 && x <= 50) && (y >= 40 && y <= 50);
        return firstRange || secondRange;
    }


    public static boolean IoneTeen(int x, int z) {
        boolean isxTeen = (x >= 13 && x <= 19);
        boolean iszTeen = (z >= 13 && z <= 19);


        return (isxTeen || iszTeen) && !(isxTeen && iszTeen);
    }


    public static boolean lastDigit(int b, int c) {

        return ((b % 10) == (c % 10));

    }

    public static boolean makes10(int f, int d) {
        return (f == 10 || d == 10 || f + d == 10);
    }

    public static String missingChar(String str, int n) {
        String first = str.substring(0, n);

        String last = str.substring(n + 1, str.length());

        return first + last;
    }


    public static boolean mixStart(String str) {
        return str.length() >= 3 && str.substring(1, 3).equals("ix");
    }


    public static boolean monkeyTrouble(boolean asmile, boolean bsmile) {
        return asmile == bsmile; // true ,true ,false ,false
    }


    public static boolean nearHundred(int n) {
        return (Math.abs(100 - n) <= 10) || (Math.abs(200 - n) <= 10);
    }


    public static boolean or35(int i) {
        return (i % 3 == 0 || i % 5 == 0);
    }


    public static boolean parrotTrouble(boolean talking, int hour) {
        return (talking & (hour < 7 || hour > 20));
    }


    public static boolean posNeg(int x, int y, boolean neg) {
        if (neg) {
            return (x < 0 && y < 0);
        } else {
            return ((x < 0 && y < 0) || x > 0 && y < 0);
        }
    }


    public static boolean sleepin(boolean weekday, boolean vacation) {
        if (!weekday || vacation) {
            return true;
        } else {
            return false;
        }
    }


    public static boolean startHi(String str){
        return str.length() >= 2 && str.startsWith("hi");
    }


    public static String startOz(String s){
        StringBuilder res = new StringBuilder();

        if (s.length() > 0 && s.charAt(0) == 'o'){
            res.append("o");
        }
        if (s.length() > 1 && s.charAt(1) == 'o'){
            res.append("z");
        }
        return res.toString();
    }


    public static boolean stringE(String str){
        int count = 0; // initiate the number of e to 0

        for (char c : str.toCharArray()) {
            if (c == 'e') {
                count++;
            }
        }
        return (count >= 1 && count <= 3);
    }


    public static int sumDouble(int x, int y) {
        int sum = x + y;

        if (x == y)
        {
            sum = sum * 2;
        }
        return sum;
    }


    public static String notString(String notString){
        if(notString.length() >=3 && notString.substring(0,3).equals("not")){
            return notString;
        }
        else{
            return "not " + notString;
        }
    }


    public static String front3(String string){
        if(string.length()<3){
            return string;
        }
        else{
            return string.substring(0,3)+string.substring(0,3)+string.substring(0,3);
        }
    }


    public static String front22(String string){
        if(string.length()>3){
            return string.substring(0,2)+string+string.substring(0,2);
        }
        else{
            return string;

        }
    }


    public static boolean in1020(int num1,int num2){
        return (num1 >=10 && num1 <=20 || num2>=10 && num2 <=20);
    }


    public static String delDel(String string){
        if(string.length()>=4 && string.substring(1,4).equals("del")){
            return string.substring(0,1)+string.substring(4);
        }
        else {
            return string;
        }
    }


    public static int intMax(int num1,int num2, int num3) {
        if (num1 > num2 && num1 > num3) {
            return num1;
        } else if (num2 > num1 && num2 > num3) {
            return num2;
        } else {
            return num3;
        }
    }


    public static int max1020(int num1,int num2){
        if(num1 >=10 && num1<=20 && num1>num2 ){
            return num1;
        }
        else if (num2 >=10 && num2<=20 && num2>num1){
            return num1;
        }
        else return 0;
    }


    public static String endUp(String string){
        int frontString = string.length()-3;
        if (string.length()>3){
            return string.substring(0,frontString)+string.substring(frontString).toUpperCase();
        }
        else
        {
            return string.toUpperCase();
        }
    }









}









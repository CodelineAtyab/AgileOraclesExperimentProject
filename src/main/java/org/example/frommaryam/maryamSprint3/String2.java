package org.example.frommaryam.maryamSprint3;
//String-2 > doubleChar


public class String2 {

    public static String doubleChar(String str) {
        char[] strNew = str.toCharArray();
        String result = "";


        for (int i = 0; i < str.length(); i++) {
            result = result + strNew[i] ;
            result = result + strNew[i] ;
        }
        return result;
    }


    //implementation
    public static void main(String[] args) {

        //doubleChar(str)--> enter something in the function
        System.out.print(doubleChar("spongbob"));

    }

}


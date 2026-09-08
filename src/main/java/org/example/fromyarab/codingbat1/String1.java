package org.example.fromyarab.codingbat1;

public class String1 {
    public String atFirst_(String str) {
        if (str.length()>1){
            return str.substring(0,2);
        }
        if (str.length() ==1){
            return str +"@";
        }
        return "@@";
    }

    public String comboString_(String a, String b) {
        if (a.length() > b.length()){
            return b+ a+ b;
        }
        return a+ b+ a;
    }

    public String conCat_(String a, String b) {
        if (a.substring(a.length()-1).equals(b.substring(0,1))){
            return a+ b.substring(1);
        }
        return a+b;
    }

    public String deFront_(String str) {
        if (str.length() > 1){
            if (!str.substring(0,1).equals("a")){
                str = str.substring(1);
                if (!str.substring(0,1).equals("b")){
                    str = str.substring(1);
                }
            }
            else if (!str.substring(1,2).equals("b")){
                str = str.substring(0,1) + str.substring(2);
            }
        }
        else if(str.length() == 1){
            if (!str.equals("a")){
                str = "";
            }
            else if (!str.equals("b")){
                str = "";
            }
        }
        return str;
    }

    public boolean endsLy_(String str) {
        if(str.length()<2){
            return false;
        }
        return str.substring(str.length()-2).equals("ly");
    }

    public String extraEnd_(String str) {
        return str.substring(str.length()-2) + str.substring(str.length()-2) + str.substring(str.length()-2);
    }

    public String extraFront_(String str) {
        if (str.length()>1){
            return str.substring(0,2) + str.substring(0,2) + str.substring(0,2);
        }
        return str + str + str;
    }

    public String firstHalf_(String str) {
        return str.substring(0,str.length()/2);
    }

    public String firstTwo_(String str) {
        if (str.length() > 1){
            return str.substring(0,2);
        }
        return str;
    }

    public boolean frontAgain_(String str) {
        return str.length()>1 && str.substring(0,2).equals(str.substring(str.length()-2));
    }

    public boolean hasBad_(String str) {
        if (str.length()<3){
            return false;
        }
        if (str.length()==3){
            String str1 = str.substring(0,3);
            return str1.equals("bad");
        }
        if (str.length()>3){
            String str1 = str.substring(0,3);
            String str2 = str.substring(1,4);
            return str1.equals("bad") || str2.equals("bad");
        }
        return false;
    }

    public String helloName_(String name) {
        return "Hello "+ name+ "!";
    }

    public String lastChars_(String a, String b) {
        if (a.length() ==0 && b.length() ==0){
            return "@@";
        }
        if (a.length() ==0){
            return "@" + b.substring(b.length()-1);
        }
        if (b.length() ==0 ){
            return a.substring(0,1) + "@";
        }
        return a.substring(0,1) + b.substring(b.length()-1);
    }

    public String lastTwo_(String str) {
        if (str.length()>1){
            return str.substring(0, str.length()-2) + str.substring(str.length()-1) + str.substring(str.length()-2, str.length()-1);
        }
        return str;
    }

    public String left2_(String str) {
        return str.substring(2) + str.substring(0,2);
    }

    public String makeAbba_(String a, String b) {
        return a + b + b + a;
    }

    public String makeOutWord_(String out, String word) {
        return out.substring(0,2)+ word+ out.substring(2);
    }

    public String makeTags_(String tag, String word) {
        return "<"+ tag+ ">"+ word+ "</"+ tag+ ">";
    }

    public String middleThree_(String str) {
        if (str.length() < 4){
            return str;
        }
        return str.substring(str.length()/2-1,str.length()/2+2);
    }

    public String middleTwo_(String str) {
        return str.substring((str.length()/2)-1, (str.length()/2)+1);
    }

    public String minCat_(String a, String b) {
        if (a.length() > b.length()){
            return a.substring(a.length()-b.length()) + b;
        }
        if (a.length() < b.length()){
            return  a + b.substring(b.length()-a.length());
        }
        return a + b;
    }

    public String nonStart_(String a, String b) {
        return a.substring(1) + b.substring(1);
    }

    public String nTwice_(String str, int n) {
        return str.substring(0, n) + str.substring(str.length()-n);
    }

    public String right2_(String str) {
        return str.substring(str.length()-2)+ str.substring(0,str.length()-2);
    }

    public String seeColor_(String str) {
        if (str.length()>2 && str.substring(0,3).equals("red")){
            return "red";
        }
        if (str.length()>3 && str.substring(0,4).equals("blue")){
            return "blue";
        }
        return "";
    }

    public String startWord_(String str, String word) {
        if(str.length()>2){
            if (word.length()>1 && str.substring(1,word.length()).equals(word.substring(1))){
                return str.substring(0,word.length());
            }
            else if (str.substring(1,2).equals(word)){
                return str.substring(0,1);
            }
            return "";
        }
        else if (str.length() == 1){
            if (word.length() == 1){
                return str;
            }
        }
        return "";
    }

    public String theEnd_(String str, boolean front) {
        if (front){
            return str.substring(0,1);
        }
        else {
            return str.substring(str.length()-1);
        }
    }

    public String twoChar_(String str, int index) {
        if (index < 0 || index+2 > str.length()){
            return str.substring(0,2);
        }
        return str.substring(index, index+2);
    }

    public String withouEnd2_(String str) {
        if (str.length()<2){
            return "";
        }
        return str.substring(1,str.length()-1);
    }

    public String without2_(String str) {
        if (str.length()>1 && str.substring(0,2).equals(str.substring(str.length()-2))){
            return str.substring(2);
        }
        return str;
    }

    public String withoutEnd_(String str) {
        return str.substring(1, str.length()-1);
    }

    public String withoutX_(String str) {
        if (str.length()>1){
            if (str.substring(0,1).equals("x")){
                str = str.substring(1);
            }
            if (str.substring(str.length()-1).equals("x")){
                str = str.substring(0,str.length()-1);
            }
        }
        else if (str.equals("x")){
            str = "";
        }
        return str;
    }

    public String withoutX2_(String str) {
        if (str.length()>1 && str.substring(0,1).equals("x")){
            str = str.substring(1);
            if (str.substring(0,1).equals("x")){
                str = str.substring(1);
            }
        }
        else if(str.length()>1 && str.substring(1,2).equals("x")){
            str = str.substring(0,1) + str.substring(2);
        }
        else if (str.length()==1 && str.substring(0,1).equals("x")) {
            str = "";
        }
        return str;
    }
}

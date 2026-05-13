package org.example.fromtibyan.codingbat;

public class StringOne {
    public String helloName(String name) {
        return ("Hello " + name + "!");
    }

    public String makeAbba(String a, String b) {
        return a+b+b+a;
    }

    public String makeTags(String tag, String word) {
        return "<"+ tag + ">" + word + "</"+ tag + ">";
    }

    public String makeOutWord(String out, String word) {
        return out.substring(0,2)+word+out.substring(2);
    }

    public String extraEnd(String str) {
        int length = str.length();
        String last = str.substring(length-2);
        return last + last +last;
    }

    public String firstTwo(String str) {
        if (str.length()>2){
            return str.substring(0,2);
        }return str;
    }

    public String firstHalf(String str) {
        int half = str.length()/2;
        return str.substring(0,half);

    }

    public String withoutEnd(String str) {
        return str.substring(1,str.length()-1);
    }

    public String comboString(String a, String b) {
        if (a.length() >b.length()){
            return b+a+b;
        }return a+b+a;
    }

    public String nonStart(String a, String b) {
        return a.substring(1)+b.substring(1);
    }

    public String left2(String str) {
        if (str.length()>2){
            String start= str.substring(0,2);
            String end = str. substring (2);
            return end+start;
        }return str;
    }

    public String right2(String str) {
        if (str.length()>2){
            String start = str.substring(0,str.length()-2);
            String end = str.substring(str.length()-2);
            return end + start;
        }return str;
    }

    public String theEnd(String str, boolean front) {
        if (front) {
            return String.valueOf(str.charAt(0));
        } else {
            return String.valueOf(str.charAt(str.length() - 1));
        }
    }

    public String withouEnd2(String str) {
        String empty = "";
        if (str.length()>1){
            return str.substring(1,str.length()-1);
        }else if (str.length()== 0){
            return str;
        }return empty;
    }

    public String middleTwo(String str) {
        int mid = (str.length()-1)/2;
        if (str.length()>=2){
            return str.substring(mid,mid+2);
        }return str;

    }

    public boolean endsLy(String str) {
        if (str.length()>1){
            if (str.charAt(str.length()-1) == 'y'
                    && str.charAt(str.length()-2) == 'l'){
                return true;
            }
        }
        return false;
    }

    public String nTwice(String str, int n) {
        String front = str.substring(0,n);
        String end = str.substring(str.length()-n, str.length());
        if (str.length()>=1){
            return front + end;
        }return str;
    }


}

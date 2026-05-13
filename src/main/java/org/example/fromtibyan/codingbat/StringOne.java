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



}

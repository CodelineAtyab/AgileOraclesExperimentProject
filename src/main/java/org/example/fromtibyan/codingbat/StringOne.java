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

    public String twoChar(String str, int index) {
        if (index < 0 || index > str.length() - 2) {
            return str.substring(0, 2);
        }return str.substring(index, index + 2);
    }

    public String middleThree(String str) {
        int mid = (str.length()-1)/2;
        String midThree = str.substring(mid-1, mid+2);
        if (str.length()>=3){
            return midThree;
        }return str;
    }

    public boolean hasBad(String str) {
        if(str.length()>=3){
            if (str.charAt(0)=='b'&& str.charAt(1)=='a' && str.charAt(2)=='d'){
                return true;
            }
        }
        if (str.length()>3){
            if (str.charAt(1)=='b'&& str.charAt(2)=='a' && str.charAt(3)=='d'){
                return true;
            }
        }
        return false;
    }

    public String atFirst(String str) {
        String at = "@@";
        if (str.length()>=2){
            return str.substring(0,2);
        }else if (str.length() == 1){
            return str + '@';
        }
        return at;
    }

    public String lastChars(String a, String b) {
        if (a.length()>=1 && b.length()>=1){
            return ""+a.charAt(0)+ b.charAt(b.length()-1);
        }else  if (a.length()<1 && b.length()>=1){
            return ""+'@'+ b.charAt(b.length()-1);
        }else  if (a.length()>=1 && b.length()<1){
            return ""+a.charAt(0)+ '@';
        }return "@@";
    }

    public String conCat(String a, String b) {
        if (a.length()>0 && b.length()>0){
            if (a.charAt(a.length()-1) == b.charAt(0)){
                return ""+a.substring(0,a.length()-1)+ b;
            }
        }
        return a+b;
    }

    public String lastTwo(String str) {
        if (str.length() >1){
            String beg = str.substring(0,str.length()-2);
            char first = str.charAt(str.length()-2);
            char second = str.charAt(str.length()-1);
            return beg + second+first;
        }return str;
    }

    public String seeColor(String str) {
        if (str.length()>=3){
            if (str.substring(0,3).equals("red")){
                return "red";
            }else if (str.length()>=4 && str.substring(0,4).equals("blue")){
                return "blue";
            }
        } return "";
    }

    public boolean frontAgain(String str) {
        if (str.length()==2){
            return true;
        }else if (str.length() >=3){
            if(str.charAt(0)==str.charAt(str.length()-2) && str.charAt(1)==str.charAt(str.length()-1)){
                return true;
            }
        }return false;
    }

    public String minCat(String a, String b) {
        int minLen = Math.min(a.length(), b.length());
        String aTrimmed = a.substring(a.length() - minLen);
        String bTrimmed = b.substring(b.length() - minLen);
        return aTrimmed + bTrimmed;
    }

    public String extraFront(String str) {
        String front;
        if (str.length() < 2) {
            front = str;
        } else {
            front = str.substring(0, 2);
        } return front + front + front;
    }

    public String without2(String str) {
        if (str.length() >= 2) {
            String front = str.substring(0, 2);
            String back = str.substring(str.length() - 2);
            if (front.equals(back)) {
                return str.substring(2);
            }
        } return str;
    }




}

package org.example.frommariya.sprint5;

public class String1 {
    public static void main(String[] args){
        //helloName
        System.out.println(helloName("Mariya"));
        System.out.println(helloName("Nabhan"));

        //makeOutWord
        System.out.println(makeOutWord("<<>>","Mariya"));
        System.out.println(makeOutWord("[[]]","Nabhan"));

        //firstHalf
        System.out.println(firstHalf("HelloWorld"));
        System.out.println(firstHalf("MariyaNabhan"));

        //nonStart
        System.out.println(nonStart("Hello","World"));
        System.out.println(nonStart("programming","java"));

        //theEnd
        System.out.println(theEnd("Good",true));
        System.out.println(theEnd("java",false));

        //endsLy
        System.out.println(endsLy("successfully"));
        System.out.println(endsLy("failed"));

        //middleThree
        System.out.println(middleThree("Candy"));
        System.out.println(middleThree("CodeLine"));

        //lastChars
        System.out.println(lastChars("last","chars"));
        System.out.println(lastChars("hello","world"));
        System.out.println(lastChars("hi",""));

        //seeColor
        System.out.println(seeColor("redvvv"));
        System.out.println(seeColor("bluebb"));
        System.out.println(seeColor("mm"));

        //sxtraFront
        System.out.println(extraFront("Muscat"));
        System.out.println(extraFront("abcdef"));
        System.out.println(extraFront("M"));
    }

    public static String helloName(String name){
        return "Hello " + name;
    }

    public static String makeOutWord(String out,String word){
        String front = out.substring(0,2);
        String back = out.substring(2);
        return front+word+back;
    }

    public static String firstHalf(String string){
        int halfLength = string.length()/2;
        return string.substring(0,halfLength);
    }

    public static String nonStart(String x,String y){
        return x.substring(1)+ y.substring(1);
    }

    public static String theEnd(String string,boolean front){
        if(front==false){
            return string.substring(0,1);
        }
        else {
            return string.substring(string.length()-1);
        }
    }

    public static boolean endsLy(String string){
        return string.endsWith("ly");
    }

    public static String middleThree(String string){
        int middle = string.length()/2;

        return string.substring(middle-1,middle+2);
    }

    public static String lastChars(String x,String y){
        if(x.length()>0 && y.length()>0) {
            return x.substring(0, 1) + y.substring(y.length() - 1);
        }
        else {
            return "@"+"@";
        }
    }

    public static String seeColor(String string){
        if(string.startsWith("red")){
            return "red";
        }
        else if (string.startsWith("blue")){
            return "blue";
        }
        return "";
    }

    public static String extraFront(String string){
        if(string.length()>1){
            return string.substring(0,2).repeat(3);
        }
        return string.repeat(3);
    }
}

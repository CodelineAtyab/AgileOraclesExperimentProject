package org.example.frommaryam.maryamSprint3;
//Warmup-1 > sleepIn


public class warmup1 {
    public static boolean sleepIn(boolean weekday, boolean vacation) {
        if (!weekday && vacation) {
            return true;
        }
        else {
            return false;
        }
    }



    //implementation
    //hi , you can sleep only if you are in weekend, or you have a vaction

    public static void main(String[] args) {

       // sleepIn(weekday,vacation) --> enter true or false in the function
        boolean result = sleepIn(false, true);


        if (result) {
            System.out.println("sleep-mode on :)");
        }
        else {
            System.out.println("you can not sleep now");
        }
    }
}


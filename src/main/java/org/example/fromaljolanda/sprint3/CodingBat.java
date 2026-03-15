package org.example.fromaljolanda.sprint3;

public class CodingBat {
    public static void main(String[] args) {
    }

    /**
    The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation.
    We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.
    sleepIn(false, false) → true
    sleepIn(true, false) → false
    sleepIn(false, true) → true

    public boolean sleepIn(boolean weekday, boolean vacation) {
        if (!weekday || vacation) {
            return true;
        }
        else {
            return false;
        }
    }
     */
// ----------------------------------------------------------------------------
    /*
    We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling.
    We are in trouble if they are both smiling or if neither of them is smiling. Return true if we are in trouble.
    monkeyTrouble(true, true) → true
    monkeyTrouble(false, false) → true
    monkeyTrouble(true, false) → false

    public boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        if (aSmile && bSmile) {
        return true;
        }
        else if (!aSmile && !bSmile) {
        return true;
        }
        else {
        return false;
        }
    }
    */
// ----------------------------------------------------------------------------
    /**
    Given two int values, return their sum. Unless the two values are the same, then return double their sum.
    sumDouble(1, 2) → 3
    sumDouble(3, 2) → 5
    sumDouble(2, 2) → 8

    public int sumDouble(int a, int b) {
      int sum = a + b;
      if (a == b) {
        sum = sum * 2;
      }
      return sum;
    }
    */
// ----------------------------------------------------------------------------
    /*
    Given an int n, return the absolute difference between n and 21,
    except return double the absolute difference if n is over 21.
    diff21(19) → 2
    diff21(10) → 11
    diff21(21) → 0

    public int diff21(int n) {
      if (n <= 21) {
        return 21 - n;
      }
      else {
        return (n - 21) * 2;
      }
    }
    */
// ----------------------------------------------------------------------------
    /**
    We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23.
    We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.
    parrotTrouble(true, 6) → true
    parrotTrouble(true, 7) → false
    parrotTrouble(false, 6) → false

    public boolean parrotTrouble(boolean talking, int hour) {
      if (talking && (hour < 7 || hour > 20)) {
        return true;
      }
      else {
        return false;
      }
    }
    */
// ----------------------------------------------------------------------------
    /*
    Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
    makes10(9, 10) → true
    makes10(9, 9) → false
    makes10(1, 9) → true

    public boolean makes10(int a, int b) {
      if (a == 10 || b == 10 || a + b == 10) {
        return true;
      }
      else {
        return false;
      }
    }
    */
// ----------------------------------------------------------------------------
    /**
    Given an int n, return true if it is within 10 of 100 or 200.
    Note: Math.abs(num) computes the absolute value of a number.
    nearHundred(93) → true
    nearHundred(90) → true
    nearHundred(89) → false

    public boolean nearHundred(int n) {
      if (Math.abs(100 - n) <= 10 || Math.abs(200 - n) <= 10) {
        return true;
      }
      else {
        return false;
      }
    }
    */
// ----------------------------------------------------------------------------
    /*
    Given 2 int values, return true if one is negative and one is positive.
    Except if the parameter "negative" is true, then return true only if both are negative.
    posNeg(1, -1, false) → true
    posNeg(-1, 1, false) → true
    posNeg(-4, -5, true) → true

    public boolean posNeg(int a, int b, boolean negative) {
      if (negative == true && a < 0 && b < 0) {
        return true;
      }
      else if (negative == false && ((a < 0 && b > 0) || (a > 0 && b < 0))) {
        return true;
      }
      else {
        return false;
      }
    }
    */
// ----------------------------------------------------------------------------
    /**
    Given a string, return a new string where "not " has been added to the front.
    However, if the string already begins with "not", return the string unchanged.
    Note: use .equals() to compare 2 strings.
    notString("candy") → "not candy"
    notString("x") → "not x"
    notString("not bad") → "not bad"


    */
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------



}

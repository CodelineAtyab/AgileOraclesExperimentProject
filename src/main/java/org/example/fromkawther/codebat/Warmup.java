package org.example.fromkawther.codebat;

public class Warmup {
    public boolean sleepIn(boolean weekday, boolean vacation) {
        return !weekday || vacation;
    }
    public int diff21(int n) {
        if (n > 21) {
            return (n - 21) * 2;
        }
        return 21 - n;
    }
    public boolean nearHundred(int n) {
        return Math.abs(100 - n) <= 10 || Math.abs(200 - n) <= 10;
    }
    public String missingChar(String str, int n) {
        return str.substring(0, n) + str.substring(n + 1);
    }
    public String backAround(String str) {
        char last = str.charAt(str.length() - 1);
        return last + str + last;
    }
    public boolean startHi(String str) {
        return str.startsWith("hi");

    }
    public boolean hasTeen(int a, int b, int c) {
        return (a >= 13 && a <= 19) ||
                (b >= 13 && b <= 19) ||
                (c >= 13 && c <= 19);
    }
    public boolean mixStart(String str) {
        return str.length() >= 3 && str.substring(1, 3).equals("ix");
    }
    public int close10(int a, int b) {
        int diffA = Math.abs(10 - a);
        int diffB = Math.abs(10 - b);

        if (diffA < diffB) {
            return a;
        }
        if (diffB < diffA) {
            return b;
        }
        return 0;
    }
    public boolean stringE(String str) {

        int count = 0;

        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == 'e') {
                count++;
            }
        }

        return count >= 1 && count <= 3;
    }
    public String everyNth(String str, int n) {
        String result = "";
        for (int i = 0; i < str.length(); i += n) {
            result += str.charAt(i);
        }
        return result;
    }
    public boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
        return aSmile == bSmile;
    }
    public boolean parrotTrouble(boolean talking, int hour) {
        return talking && (hour < 7 || hour > 20);
    }
    public boolean posNeg(int a, int b, boolean negative) {
        if (negative) {
            return a < 0 && b < 0;
        } else {
            return (a < 0 && b > 0) || (a > 0 && b < 0);
        }
    }
    public String frontBack(String str) {
        if (str.length() <= 1) return str;
        char first = str.charAt(0);
        char last = str.charAt(str.length() - 1);
        String middle = str.substring(1, str.length() - 1);
        return last + middle + first;
    }

    public boolean or35(int n) {
        return (n % 3 == 0) || (n % 5 == 0);
    }
    public boolean icyHot(int temp1, int temp2) {
        return (temp1 < 0 && temp2 > 100) || (temp1 > 100 && temp2 < 0);

    }
    public boolean loneTeen(int a, int b) {
        boolean aTeen = (a >= 13 && a <= 19);
        boolean bTeen = (b >= 13 && b <= 19);

        return (aTeen && !bTeen) || (!aTeen && bTeen);
    }
    public String startOz(String str) {
        String result = "";
        if (str.length() >= 1 && str.charAt(0) == 'o') {
            result += 'o';
        }
        if (str.length() >= 2 && str.charAt(1) == 'z') {
            result += 'z';
        }
        return result;
    }
    public boolean in3050(int a, int b) {
        boolean in30s = (a >= 30 && a <= 40) && (b >= 30 && b <= 40);
        boolean in40s = (a >= 40 && a <= 50) && (b >= 40 && b <= 50);
        return in30s || in40s;
    }
    public boolean lastDigit(int a, int b) {
        return (a % 10) == (b % 10);
    }
    public int sumDouble(int a, int b) {
        if (a == b) {
            return 2 * (a + b);
        } else {
            return a + b;
        }
    }
    public boolean makes10(int a, int b) {
        return (a == 10 || b == 10 || (a + b) == 10);
    }
    public String notString(String str) {
        if (str.length() >= 3 && str.substring(0, 3).equals("not")) {
            return str;
        } else {
            return "not " + str;
        }
    }
    public String front3(String str) {
        String front;

        if (str.length() >= 3) {
            front = str.substring(0, 3);
        }
        else {
            front = str;
        }

        return front + front + front;
    }
    public boolean in1020(int a, int b) {
        return ((a >= 10 && a <= 20) || (b >= 10 && b <= 20));
    }
    public String front22(String str) {
        // First figure the number of chars to take
        int take = 2;
        if (take > str.length()) {
            take = str.length();
        }

        String front = str.substring(0, take);
        return front + str + front;
    }}
   // public boolean in1020 (int a, int b) {
        //return ((a >= 10 && a <= 20) || (b >= 10 && b <= 20));
//    }
//public String delDel(String str) {
   // if (str.length()>=4 && str.substring(1, 4).equals("del")) {
        // First char + rest of string starting at 4
      //
    // Otherwise return the original string.
   // return str;
//}

//public int intMax(int a, int b, int c) {
  //  int max;

    // First check between a and b
   // if (a > b) {
    //    max = a;
   // } else {
      //  max = b;
    //}

    // Now check between max and c
  //  if (c > max) {
      //  max = c;
  //  }

   // return max;

    // Could use the built in Math.max(x, y) function which selects the larger
    // of two values.
}

//public int max1020(int a, int b) {

   // if (b > a) {
      //  int temp = a;
      //  a = b;
      //  b = temp;
  //  }


   // if (a >= 10 && a <= 20) return a;
   // if (b >= 10 && b <= 20) return b;
   // return 0;

//}
//public String endUp(String str) {
   // if (str.length() <= 3) return str.toUpperCase();
   // int cut = str.length() - 3;
   // String front = str.substring(0, cut);
   // String back  = str.substring(cut);  // this takes from cut to the end

   // return front + back.toUpperCase();

//}

//}

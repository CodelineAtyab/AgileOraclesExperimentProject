package org.example.fromkawther.codebat;

public class Logic {
 //1:
 public boolean makeBricks(int small, int big, int goal) {
     return goal - Math.min(goal / 5, big) * 5 <= small;
 }

//2:
public int noTeenSum(int a, int b, int c) {

    return fixTeen(a) + fixTeen(b) + fixTeen(c);
}

    public int fixTeen(int n) {
        if ((n >= 13 && n <= 19) && n != 15 && n != 16) {
            return 0;
        }
        return n;
    }

//3:
public int blackjack(int a, int b) {
    if (a > 21 && b > 21) return 0;
    if (a > 21) return b;
    if (b > 21) return a;
    return (a > b) ? a : b;
}

//4:
public int loneSum(int a, int b, int c) {
    int sum = 0;
    if (a != b && a != c) sum += a;
    if (b != a && b != c) sum += b;
    if (c != a && c != b) sum += c;
    return sum;
}

//5:
public int roundSum(int a, int b, int c) {
    return round10(a) + round10(b) + round10(c);
}

    public int round10(int num) {
        int remainder = num % 10;
        if (remainder >= 5) {
            return num + (10 - remainder);
        } else {
            return num - remainder;
        }
    }
//6:
public boolean evenlySpaced(int a, int b, int c) {

    int small = Math.min(a, Math.min(b, c));
    int large = Math.max(a, Math.max(b, c));
    int medium = a + b + c - small - large;
    return (medium - small) == (large - medium);

}
//7:
public int luckySum(int a, int b, int c) {
    if (a == 13) return 0;
    if (b == 13) return a;
    if (c == 13) return a + b;
    return a + b + c;

}
//8:
public boolean closeFar(int a, int b, int c) {
    boolean bClose = Math.abs(a - b) <= 1;
    boolean cClose = Math.abs(a - c) <= 1;
    boolean bFar = Math.abs(b - c) >= 2 && Math.abs(b - a) >= 2;
    boolean cFar = Math.abs(b - c) >= 2 && Math.abs(c - a) >= 2;
    return (bClose && cFar) || (cClose && bFar);
}
//9:
public int makeChocolate(int small, int big, int goal) {
    int bigUsed = Math.min(goal / 5, big);
    int remaining = goal - bigUsed * 5;
    if (remaining <= small) {
        return remaining;
    } else {
        return -1;
    }
}
//logic-3:
    //1:
public int countYZ(String str) {
    int count = 0;
    str = str.toLowerCase();

    for (int i = 0; i < str.length(); i++) {
        char current = str.charAt(i);

        if (current == 'y' || current == 'z') {
            if (i == str.length() - 1 || !Character.isLetter(str.charAt(i + 1))) {
                count++;
            }
        }
    }

    return count;
}
//2:
public boolean gHappy(String str) {
    for (int i = 0; i < str.length(); i++) {
        if (str.charAt(i) == 'g') {
            boolean happy = false;

            if (i > 0 && str.charAt(i - 1) == 'g') {
                happy = true;
            }

            if (i < str.length() - 1 && str.charAt(i + 1) == 'g') {
                happy = true;
            }

            if (!happy) {
                return false;
            }
        }
    }

    return true;
}
//3:
public String sameEnds(String string) {
    int length = string.length();
    String result = "";

    for (int i = 0; i <= length / 2; i++) {
        String start = string.substring(0, i);
        String end = string.substring(length - i);

        if (start.equals(end)) {
            result = start;
        }
    }

    return result;
}

//4:
public int sumNumbers(String str) {
    int sum = 0;
    String temp = "";

    for (int i = 0; i < str.length(); i++) {
        if (Character.isDigit(str.charAt(i))) {
            temp += str.charAt(i);
        } else {
            if (!temp.isEmpty()) {
                sum += Integer.parseInt(temp);
                temp = "";
            }
        }
    }

    if (!temp.isEmpty()) {
        sum += Integer.parseInt(temp);
    }

    return sum;
}
//5:
public String withoutString(String base, String remove) {
    StringBuilder result = new StringBuilder();
    int bLen = base.length();
    int rLen = remove.length();
    String lowRemove = remove.toLowerCase();

    int i = 0;
    while (i < bLen) {
        if (i <= bLen - rLen) {
            String sub = base.substring(i, i + rLen).toLowerCase();

            if (sub.equals(lowRemove)) {
                i += rLen;
                continue;
            }
        }

        result.append(base.charAt(i));
        i++;
    }

    return result.toString();
}

//6:
public int countTriple(String str) {
    int count = 0;

    for (int i = 0; i <= str.length() - 3; i++) {
        char first = str.charAt(i);

        if (str.charAt(i + 1) == first && str.charAt(i + 2) == first) {
            count++;
        }
    }

    return count;
}
//7:
public String mirrorEnds(String string) {
    StringBuilder result = new StringBuilder();
    int len = string.length();

    for (int i = 0; i < len; i++) {
        if (string.charAt(i) == string.charAt(len - 1 - i)) {
            result.append(string.charAt(i));
        } else {
            break;
        }
    }

    return result.toString();
}

//8:
public String notReplace(String str) {
    StringBuilder result = new StringBuilder();
    int len = str.length();

    int i = 0;
    while (i < len) {
        if (i <= len - 2 && str.substring(i, i + 2).equals("is")) {

            boolean leftIsolated = (i == 0 || !Character.isLetter(str.charAt(i - 1)));

            boolean rightIsolated = (i + 2 == len || !Character.isLetter(str.charAt(i + 2)));

            if (leftIsolated && rightIsolated) {
                result.append("is not");
                i += 2;
            } else {
                result.append(str.charAt(i));
                i++;
            }
        } else {
            result.append(str.charAt(i));
            i++;
        }
    }

    return result.toString();
}
//9:
public boolean equalIsNot(String str) {
    int isCount = 0;
    int notCount = 0;

    for (int i = 0; i <= str.length() - 2; i++) {
        if (str.substring(i, i + 2).equals("is")) {
            isCount++;
        }
    }

    for (int i = 0; i <= str.length() - 3; i++) {
        if (str.substring(i, i + 3).equals("not")) {
            notCount++;
        }
    }

    return isCount == notCount;
}
//10:
public int sumDigits(String str) {
    int sum = 0;

    for (int i = 0; i < str.length(); i++) {
        char cur = str.charAt(i);

        if (Character.isDigit(cur)) {
            String digitStr = str.substring(i, i + 1);
            sum += Integer.parseInt(digitStr);
        }
    }

    return sum;
}
//11:
public int maxBlock(String str) {
    if (str.length() == 0) return 0;

    int max = 1;
    int count = 1;

    for (int i = 1; i < str.length(); i++) {
        if (str.charAt(i) == str.charAt(i - 1)) {
            count++;
        } else {
            count = 1;
        }

        if (count > max) {
            max = count;
        }
    }

    return max;
}


}

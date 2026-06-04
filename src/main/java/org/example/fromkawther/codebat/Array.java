package org.example.fromkawther.codebat;

public class Array {
    public boolean firstLast6(int[] nums) {
        return (nums[0] == 6 || nums[nums.length - 1] == 6);
    }
    public boolean commonEnd(int[] a, int[] b) {
        return (a[0] == b[0] || a[a.length - 1] == b[b.length - 1]);
    }
    public int[] reverse3(int[] nums) {
        int[] reversed = {nums[2], nums[1], nums[0]};
        return reversed;
    }
    public int[] middleWay(int[] a, int[] b) {
        return new int[] {a[1], b[1]};

    }
    public boolean no23(int[] nums) {
        return (nums[0] != 2 && nums[0] != 3 && nums[1] != 2 && nums[1] != 3);
    }
    public int[] fix23(int[] nums) {
        if (nums[0] == 2 && nums[1] == 3) {
            nums[1] = 0;
        }

        if (nums[1] == 2 && nums[2] == 3) {
            nums[2] = 0;
        }

        return nums;
    }
    public int[] makeMiddle(int[] nums) {
        int mid = nums.length / 2;

        return new int[] {nums[mid - 1], nums[mid]};
    }
    public int[] midThree(int[] nums) {
        int mid = nums.length / 2;

        return new int[] {nums[mid - 1], nums[mid], nums[mid + 1]};
    }
    public boolean unlucky1(int[] nums) {
        int len = nums.length;


        if (len >= 2) {
            if (nums[0] == 1 && nums[1] == 3) return true;
            if (len >= 3 && nums[1] == 1 && nums[2] == 3) return true;
        }


        if (len >= 2) {
            if (nums[len - 2] == 1 && nums[len - 1] == 3) return true;
        }

        return false;
    }
    public boolean sameFirstLast(int[] nums) {
        return (nums.length >= 1 && nums[0] == nums[nums.length - 1]);
    }
    public int sum3(int[] nums) {
        return nums[0] + nums[1] + nums[2];
    }
    public int[] maxEnd3(int[] nums) {
        int max = Math.max(nums[0], nums[2]);


        nums[0] = max;
        nums[1] = max;
        nums[2] = max;


        return nums;
    }
    public int[] makeEnds(int[] nums) {
        return new int[] {nums[0], nums[nums.length - 1]};
    }
    public int[] makeLast(int[] nums) {
        int newSize = nums.length * 2;
        int[] result = new int[newSize];

        result[result.length - 1] = nums[nums.length - 1];

        return result;
    }
    public int start1(int[] a, int[] b) {
        int count = 0;


        if (a.length > 0 && a[0] == 1) {
            count++;
        }


        if (b.length > 0 && b[0] == 1) {
            count++;
        }

        return count;
    }
    public int[] plusTwo(int[] a, int[] b) {
        return new int[] {a[0], a[1], b[0], b[1]};
    }
    public int maxTriple(int[] nums) {
        int first = nums[0];
        int middle = nums[nums.length / 2];
        int last = nums[nums.length - 1];


        int tempMax = Math.max(first, middle);


        return Math.max(tempMax, last);
    }
    public int[] make2(int[] a, int[] b) {
        int[] res = new int[2];
        int count = 0;


        for (int i = 0; i < a.length && count < 2; i++) {
            res[count] = a[i];
            count++;
        }


        for (int i = 0; i < b.length && count < 2; i++) {
            res[count] = b[i];
            count++;
        }

        return res;
    }
    public int[] makePi() {
        return new int[] {3, 1, 4};
    }
    public int[] rotateLeft3(int[] nums) {
        return new int[] {nums[1], nums[2], nums[0]};
    }
    public int sum2(int[] nums) {
        if (nums.length == 0) {
            return 0;
        }


        if (nums.length == 1) {
            return nums[0];
        }


        return nums[0] + nums[1];
    }
    public boolean has23(int[] nums) {
        return (nums[0] == 2 || nums[0] == 3 || nums[1] == 2 || nums[1] == 3);
    }
    public boolean double23(int[] nums) {
        if (nums.length == 2) {

            return (nums[0] == 2 && nums[1] == 2) || (nums[0] == 3 && nums[1] == 3);
        }


        return false;
    }
    public int[] biggerTwo(int[] a, int[] b) {
        int sumA = a[0] + a[1];
        int sumB = b[0] + b[1];

        if (sumB > sumA) {
            return b;
        }

        return a;
    }
    public int[] swapEnds(int[] nums) {
        int temp = nums[0];


        nums[0] = nums[nums.length - 1];


        nums[nums.length - 1] = temp;

        return nums;
    }
    public int[] frontPiece(int[] nums) {
        if (nums.length < 2) {
            return nums;
        }

        return new int[] {nums[0], nums[1]};
    }
    public int[] front11(int[] a, int[] b) {
        int size = 0;
        if (a.length > 0) size++;
        if (b.length > 0) size++;

        int[] result = new int[size];
        int index = 0;


        if (a.length > 0) {
            result[index] = a[0];
            index++;
        }


        if (b.length > 0) {
            result[index] = b[0];
        }

        return result;
    }

}

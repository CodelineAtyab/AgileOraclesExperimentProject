package org.example.fromyarab.codingbat1;

public class Array1 {
    public boolean firstLast6(int[] nums) {
        return nums[0] == 6 || nums[nums.length - 1] == 6;
    }

    public boolean sameFirstLast(int[] nums) {
        return nums.length >= 1 && nums[0] == nums[nums.length - 1];
    }

    public int[] makePi() {
        return new int[]{3, 1, 4};
    }

    public boolean commonEnd(int[] a, int[] b) {
        return a[0] == b[0] || a[a.length - 1] == b[b.length - 1];
    }

    public int sum3(int[] nums) {
        return nums[0] + nums[1] + nums[2];
    }

    public int[] rotateLeft3(int[] nums) {
        return new int[]{nums[1], nums[2], nums[0]};
    }

    public int[] reverse3(int[] nums) {
        return new int[]{nums[2], nums[1], nums[0]};
    }

    public int[] maxEnd3(int[] nums) {
        int max = Math.max(nums[0], nums[2]);
        return new int[]{max, max, max};
    }

    public int sum2(int[] nums) {
        if (nums.length == 0) return 0;
        if (nums.length == 1) return nums[0];
        return nums[0] + nums[1];
    }

    public int[] middleWay(int[] a, int[] b) {
        return new int[]{a[1], b[1]};
    }

    public int[] makeEnds(int[] nums) {
        return new int[]{nums[0], nums[nums.length - 1]};
    }

    public boolean has23(int[] nums) {
        return nums[0] == 2 || nums[0] == 3 || nums[1] == 2 || nums[1] == 3;
    }

    public boolean no23(int[] nums) {
        return nums[0] != 2 && nums[0] != 3 && nums[1] != 2 && nums[1] != 3;
    }

    public int[] makeLast(int[] nums) {
        int[] result = new int[nums.length * 2];
        result[result.length - 1] = nums[nums.length - 1];
        return result;
    }

    public boolean double23(int[] nums) {
        return (nums.length == 2) && (nums[0] == nums[1]) && (nums[0] == 2 || nums[0] == 3);
    }

    public int[] fix23(int[] nums) {
        if (nums[0] == 2 && nums[1] == 3) nums[1] = 0;
        if (nums[1] == 2 && nums[2] == 3) nums[2] = 0;
        return nums;
    }

    public int start1(int[] a, int[] b) {
        int count = 0;
        if (a.length > 0 && a[0] == 1) count++;
        if (b.length > 0 && b[0] == 1) count++;
        return count;
    }

    public int[] biggerTwo(int[] a, int[] b) {
        return (a[0] + a[1] >= b[0] + b[1]) ? a : b;
    }

    public int[] makeMiddle(int[] nums) {
        int mid = nums.length / 2;
        return new int[]{nums[mid - 1], nums[mid]};
    }

    public int[] plusTwo(int[] a, int[] b) {
        return new int[]{a[0], a[1], b[0], b[1]};
    }

    public int[] swapEnds(int[] nums) {
        int temp = nums[0];
        nums[0] = nums[nums.length - 1];
        nums[nums.length - 1] = temp;
        return nums;
    }

    public int[] midThree(int[] nums) {
        int mid = nums.length / 2;
        return new int[]{nums[mid - 1], nums[mid], nums[mid + 1]};
    }

    public int maxTriple(int[] nums) {
        int mid = nums.length / 2;
        return Math.max(nums[0], Math.max(nums[mid], nums[nums.length - 1]));
    }

    public int[] frontPiece(int[] nums) {
        int size = Math.min(2, nums.length);
        int[] result = new int[size];
        for (int i = 0; i < size; i++) result[i] = nums[i];
        return result;
    }

    public boolean unlucky1(int[] nums) {
        if (nums.length >= 2 && nums[0] == 1 && nums[1] == 3) return true;
        if (nums.length >= 3 && nums[nums.length - 2] == 1 && nums[nums.length - 1] == 3) return true;
        if (nums.length >= 2 && nums[1] == 1 && nums[2] == 3) return true;
        return false;
    }

    public int[] make2(int[] a, int[] b) {
        int[] result = new int[2];
        int i = 0, ai = 0, bi = 0;
        while (i < 2) {
            if (ai < a.length) result[i++] = a[ai++];
            else result[i++] = b[bi++];
        }
        return result;
    }

    public int[] front11(int[] a, int[] b) {
        if (a.length > 0 && b.length > 0) return new int[]{a[0], b[0]};
        if (a.length > 0) return new int[]{a[0]};
        if (b.length > 0) return new int[]{b[0]};
        return new int[]{};
    }
}

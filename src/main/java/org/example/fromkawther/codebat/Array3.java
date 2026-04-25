package org.example.fromkawther.codebat;

public class Array3 {
    public int maxSpan(int[] nums) {
        if (nums.length == 0) return 0;

        int maxSpan = 1;

        for (int i = 0; i < nums.length; i++) {
            for (int j = nums.length - 1; j >= i; j--) {
                if (nums[j] == nums[i]) {
                    int currentSpan = j - i + 1;

                    if (currentSpan > maxSpan) {
                        maxSpan = currentSpan;
                    }

                    break;
                }
            }
        }

        return maxSpan;
    }

    public boolean canBalance(int[] nums) {
        int leftSum = 0;
        int totalSum = 0;

        for (int n : nums) {
            totalSum += n;
        }

        for (int i = 0; i < nums.length; i++) {
            leftSum += nums[i];
            totalSum -= nums[i];

            if (leftSum == totalSum) {
                return true;
            }
        }

        return false;
    }

    public int[] seriesUp(int n) {
        int[] result = new int[n * (n + 1) / 2];
        int p = 0;

        for (int i = 1; i <= n; i++) {

            for (int j = 1; j <= i; j++) {
                result[p] = j;
                p++;
            }
        }

        return result;
    }

    public int[] fix34(int[] nums) {
        int last4 = 0;

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 3) {
                int targetPos = i + 1;

                for (int j = last4; j < nums.length; j++) {
                    if (nums[j] == 4) {
                        if (j == 0 || nums[j - 1] != 3) {
                            int temp = nums[targetPos];
                            nums[targetPos] = nums[j];
                            nums[j] = temp;
                            last4 = j;
                            break;
                        }
                    }
                }
            }
        }

        return nums;
    }

    public boolean linearIn(int[] outer, int[] inner) {
        int i = 0;
        int j = 0;

        while (i < outer.length && j < inner.length) {
            if (outer[i] == inner[j]) {
                j++;
                i++;
            } else if (outer[i] < inner[j]) {
                i++;
            } else {
                return false;
            }
        }

        return j == inner.length;
    }

    public int maxMirror(int[] nums) {
        int max = 0;
        int n = nums.length;

        for (int i = 0; i < n; i++) {
            for (int j = n - 1; j >= 0; j--) {
                int count = 0;
                while (i + count < n && j - count >= 0 && nums[i + count] == nums[j - count]) {
                    count++;
                }

                if (count > max) {
                    max = count;
                }
            }
        }

        return max;
    }

    public int[] fix45(int[] nums) {
        int n = nums.length;
        int j = 0;

        for (int i = 0; i < n; i++) {
            if (nums[i] == 4) {
                int targetPos = i + 1;

                while (j < n) {
                    if (nums[j] == 5 && (j == 0 || nums[j - 1] != 4)) {
                        int temp = nums[targetPos];
                        nums[targetPos] = nums[j];
                        nums[j] = temp;
                        break;
                    }
                    j++;
                }
            }
        }

        return nums;
    }

    public int[] squareUp(int n) {
        int[] result = new int[n * n];

        for (int i = 1; i <= n; i++) {

            for (int j = 1; j <= n; j++) {

                int index = (i * n) - j;

                if (j <= i) {
                    result[index] = j;
                }
            }
        }

        return result;
    }

    public int countClumps(int[] nums) {
        int clumpCount = 0;

        for (int i = 0; i < nums.length - 1; i++) {
            if (nums[i] == nums[i + 1]) {
                clumpCount++;

                while (i < nums.length - 1 && nums[i] == nums[i + 1]) {
                    i++;
                }
            }
        }

        return clumpCount;
    }

}

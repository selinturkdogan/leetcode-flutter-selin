class Solution {
  int missingNumber(List<int> nums) {
    int n = nums.length;
    int expectedSum = n * (n + 1) ~/ 2;

    int actualSum = 0;

    for (int num in nums) {
      actualSum += num;
    }

    return expectedSum - actualSum;
  }
}

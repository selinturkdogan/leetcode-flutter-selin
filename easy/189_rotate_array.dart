class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k = k % n;

    _reverse(nums, 0, n - 1);
    _reverse(nums, 0, k - 1);
    _reverse(nums, k, n - 1);
  }

  void _reverse(List<int> nums, int start, int end) {
    while (start < end) {
      int temp = nums[start];
      nums[start] = nums[end];
      nums[end] = temp;

      start++;
      end--;
    }
  }
}

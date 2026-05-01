class Solution {
  List<int> searchRange(List<int> nums, int target) {
    return [_findFirst(nums, target), _findLast(nums, target)];
  }

  int _findFirst(List<int> nums, int target) {
    int left = 0, right = nums.length - 1;
    int result = -1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;

      if (nums[mid] == target) {
        result = mid;
        right = mid - 1;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return result;
  }

  int _findLast(List<int> nums, int target) {
    int left = 0, right = nums.length - 1;
    int result = -1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;

      if (nums[mid] == target) {
        result = mid;
        left = mid + 1;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return result;
  }
}

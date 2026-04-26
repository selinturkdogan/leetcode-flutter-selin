class Solution {
  int mySqrt(int x) {
    if (x < 2) return x;

    int left = 1;
    int right = x;

    while (left <= right) {
      int mid = (left + right) ~/ 2;

      if (mid * mid == x) {
        return mid;
      } else if (mid * mid < x) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return right;
  }
}

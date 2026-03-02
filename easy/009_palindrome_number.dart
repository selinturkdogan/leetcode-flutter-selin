class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    String s = x.toString();
    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      if (s[left] != s[right]) {
        return false;
      }
      left++;
      right--;
    }

    return true;
  }
}

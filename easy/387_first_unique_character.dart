class Solution {
  int firstUniqChar(String s) {
    Map<String, int> count = {};

    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      count[char] = (count[char] ?? 0) + 1;
    }

    for (int i = 0; i < s.length; i++) {
      if (count[s[i]] == 1) {
        return i;
      }
    }

    return -1;
  }
}

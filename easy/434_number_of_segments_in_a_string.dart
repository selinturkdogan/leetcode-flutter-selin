class Solution {
  int countSegments(String s) {
    s = s.trim();

    if (s.isEmpty) return 0;

    return s.split(RegExp(r'\s+')).length;
  }
}

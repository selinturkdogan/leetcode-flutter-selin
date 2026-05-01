class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    if (intervals.isEmpty) return [];

    intervals.sort((a, b) => a[0].compareTo(b[0]));

    List<List<int>> result = [];

    for (var interval in intervals) {
      if (result.isEmpty || result.last[1] < interval[0]) {
        result.add(interval);
      } else {
        result.last[1] = result.last[1] > interval[1]
            ? result.last[1]
            : interval[1];
      }
    }

    return result;
  }
}

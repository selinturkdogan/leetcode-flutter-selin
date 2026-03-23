class Solution {
  List<int> getRow(int rowIndex) {
    List<int> row = [1];

    for (int i = 1; i <= rowIndex; i++) {
      row.add(1);

      for (int j = i - 1; j > 0; j--) {
        row[j] = row[j] + row[j - 1];
      }
    }

    return row;
  }
}

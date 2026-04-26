class Solution {
  bool isPalindrome(ListNode? head) {
    List<int> values = [];

    while (head != null) {
      values.add(head.val);
      head = head.next;
    }

    int left = 0;
    int right = values.length - 1;

    while (left < right) {
      if (values[left] != values[right]) {
        return false;
      }
      left++;
      right--;
    }

    return true;
  }
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? current = head;

    while (current != null) {
      ListNode? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    return prev;
  }
}

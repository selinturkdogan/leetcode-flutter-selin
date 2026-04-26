class MyQueue {
  List<int> inStack = [];
  List<int> outStack = [];

  void push(int x) {
    inStack.add(x);
  }

  int pop() {
    peek();
    return outStack.removeLast();
  }

  int peek() {
    if (outStack.isEmpty) {
      while (inStack.isNotEmpty) {
        outStack.add(inStack.removeLast());
      }
    }
    return outStack.last;
  }

  bool empty() {
    return inStack.isEmpty && outStack.isEmpty;
  }
}

void main() {
  var n = 10;
  print("fibonacci upto $n :${fibonacci(n)}");

  print(fibonacciIterative(n));

  for (int i = 0; i < n; i++) {
    print(fibonacciRecursive(i));
  }

  for (int i = 0; i < n; i++) {
    print(fibonacciMemoized(i));
  }

  fibonacciOptimized(n);
}

List fibonacci(int n) {
  List a = [];
  for (var i = 0; i < n; i++) {
    if (i <= 1) {
      a.add(i);
    } else {
      a.add(a[i - 1] + a[i - 2]);
    }
  }
  return a;
}

List<int> fibonacciIterative(int n) {
  // Time Complexity: O(n), Space Complexity: O(n) (for storing the list)
  List<int> fib = [0, 1];
  for (int i = 2; i < n; i++) {
    fib.add(fib[i - 1] + fib[i - 2]);
  }
  return fib;
}

int fibonacciRecursive(int n) {
  // Recursion is inefficient for large n because it has exponential time complexity O(2^n).
  if (n <= 1) return n;
  return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

void fibonacciOptimized(int n) {
  // Time Complexity: O(n), Space Complexity: O(1)
  int a = 0, b = 1;
  for (int i = 0; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
}

int fibonacciMemoized(int n) {
  //  Time Complexity: O(n), Space Complexity: O(n) (due to recursion stack and memoization)
  Map<int, int> memo = {};
  if (n <= 1) return n;
  if (memo.containsKey(n)) return memo[n]!;
  memo[n] = fibonacciMemoized(n - 1) + fibonacciMemoized(n - 2);
  return memo[n]!;
}

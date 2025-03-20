bool isPalindrome(String s) {
  s = s.replaceAll(' ', '').toLowerCase();
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

void main() {
  print(isPalindrome("A man a plan a canal Panama")); // Output: true
}

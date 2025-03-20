String reverseString(String s) {
  StringBuffer reversed = StringBuffer();
  for (int i = s.length - 1; i >= 0; i--) {
    reversed.write(s[i]);
  }
  return reversed.toString();
}

void main() {
  print(reverseString("hello")); // Output: "olleh"
}

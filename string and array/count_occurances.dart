int countOccurrences(String str, String char) {
  return str.split('').where((c) => c == char).length;
}

void main() {
  print(countOccurrences("banana", "a")); // Output: 3
}

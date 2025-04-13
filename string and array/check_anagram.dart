// Check if two strings are anagrams
bool isAnagram(String a, String b) {
  if (a.length != b.length) return false;
  List<String> aList = a.split('')..sort();
  List<String> bList = b.split('')..sort();
  return aList.join() == bList.join();
}

void main() {
  print(isAnagram("listen", "silent")); // true
}

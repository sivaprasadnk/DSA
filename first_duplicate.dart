int? findFirstDuplicate(List<int> nums) {
  Set<int> seen = {};
  for (int num in nums) {
    if (seen.contains(num)) {
      return num;
    }
    seen.add(num);
  }
  return null; // No duplicate found
}

void main() {
  List<int> nums = [3, 1, 4, 2, 5, 3, 6];
  int? result = findFirstDuplicate(nums);

  if (result != null) {
    print('First duplicate: $result');
  } else {
    print('No duplicates found');
  }
}

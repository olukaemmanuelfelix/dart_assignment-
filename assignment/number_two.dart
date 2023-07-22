void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> findCommonElements(List<int> list1, List<int> list2) {
  // Create a set from the first list to remove duplicates
  Set<int> set1 = list1.toSet();
  // Use the `where` method to filter elements that are in both sets
  List<int> commonElements = list2.where((element) => set1.contains(element)).toList();
  return commonElements.toSet().toList(); // Convert back to a list to remove duplicates
}

  List<int> commonElements = findCommonElements(a, b);

  print("Common elements without duplicates: $commonElements");
}



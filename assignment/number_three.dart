void main() {
  //the statement we are using
  String x = "I am having fun learning dart programming language";

  bool checkPalindrome(String str) {
  // Remove non-alphanumeric characters and convert to lowercase
  String cleanedString = str.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  
  // Compare the string with its reverse
  String reversedString = cleanedString.split('').reversed.join();
  
  return cleanedString == reversedString;
}
  
  // Checking if the string is a palindrome
  bool isPalindrome = checkPalindrome(x);
  
  // Print the result
  if (isPalindrome) {
    print("The string '$x' is a palindrome.");
  } else {
    print("The string '$x' is not a palindrome.");
  }
}



import 'dart:io';

void main() {
  String userInput = getUserInput("Enter a long string containing multiple words:");
  String reversedString = reverseWords(userInput);
  print("Reversed string: $reversedString");
}

String getUserInput(String prompt) {
  stdout.write("$prompt ");
  return stdin.readLineSync() ?? "";
}

String reverseWords(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = words.reversed.toList();
  return reversedWords.join(' ');
}

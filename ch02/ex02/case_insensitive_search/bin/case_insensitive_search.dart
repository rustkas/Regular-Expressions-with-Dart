void main() {
  final regex = RegExp('Hello world!', caseSensitive: false);

  final input = 'hELLO WORLD!';
  print(regex.stringMatch(input) == input);
}

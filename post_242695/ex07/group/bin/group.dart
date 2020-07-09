void main() {
  final regex = RegExp('boo+(hoo+)+',caseSensitive: false);
  final input = 'Boohoooohoohooo';
  print(regex.stringMatch(input));
}

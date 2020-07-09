void main() {
  final regex = RegExp(r'\b\d+ (pig|cow|chicken)s?\b');
  final input = '15 pigs';
  print(regex.stringMatch(input));
}

void main() {
  final regex = RegExp(r'\d+');
  final input = 'one two 100';
  print(regex.stringMatch(input));
}

void main() {
  final regex = RegExp(r'\d{1,2}-\d{1,2}-\d{4} \d{1,2}:\d{2}');
  final input = '30-1-2003 8:45';

  print(regex.stringMatch(input));
}

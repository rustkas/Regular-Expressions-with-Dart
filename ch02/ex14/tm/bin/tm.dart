void main() {
  final regex1 = RegExp(r'\u2122');
  final regex2 = RegExp('\u{2122}');

  final input = '™';

  if (regex1.stringMatch(input) != input) {
    throw Exception('Wrong regular expression ${regex1.pattern}');
  }

  if (regex2.stringMatch(input) != input) {
    throw Exception('Wrong regular expression ${regex2.pattern}');
  }

  print('ok');
}

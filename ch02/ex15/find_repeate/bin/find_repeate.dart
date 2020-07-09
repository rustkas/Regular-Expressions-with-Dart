void main() {
  // \b\d\d(\d\d)-\1-\1\b
  final regex = RegExp(r'\b\d\d(\d\d)-\1-\1\b');

  final input = '2008-08-08 2007-07-07 2006-06-06 1 2 20 30 70';

  for (var item in regex.allMatches(input)) {
    print(item.group(0));
  }
}

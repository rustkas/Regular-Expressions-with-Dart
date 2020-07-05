void main() {
  final validExp = RegExp(r'\bcat\b');

  const string = 'cat catti cattink arcat arcattin cat';

  for (var item in validExp.allMatches(string)) {
    print(string.substring(item.start, item.end));
  }
}

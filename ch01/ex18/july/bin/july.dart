void main() {
  final validExp = RegExp('(July|Jul) (fourth|4th|4)');

  const strings = [
    'July fourth',
    'July 4th',
    'July 4',
    'Jul fourth',
    'Jul 4th',
    'Jul 4'
  ];
  for (var string in strings) {
    for (var item in validExp.allMatches(string)) {
      print(string.substring(item.start, item.end));
    }
  }
}

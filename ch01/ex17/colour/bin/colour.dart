void main() {
  final validExp = RegExp('colou?r');

  const string = 'color colour';

  for (var item in validExp.allMatches(string)) {
    print(string.substring(item.start, item.end));
  }
}

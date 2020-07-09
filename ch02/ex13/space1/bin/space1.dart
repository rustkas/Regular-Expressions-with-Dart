void main() {
  final regex = RegExp(r'\s+', caseSensitive: false);
  const input = '\t \n\r\v\f\0';
  if (regex.hasMatch(input)) {
    print('ok');
  }
}

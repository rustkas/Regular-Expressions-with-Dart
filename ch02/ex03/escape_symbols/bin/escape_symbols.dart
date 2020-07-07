/// Write a regular expression that matches a string consisting of
/// the following ASCII control characters:
/// bell, escape, form feed, line feed, carriage return, horizontal tab, vertical tab.
/// These characters have the following ASCII hexadecimal codes:
/// 07, 1B, 0C, 0A, 0D, 09, 0B.
void main() {
  final regex = RegExp('\u{07}\u{1B}\u{0C}\u{0A}\u{0D}\u{09}\u{0B}');
  final input = '\u{07}\u{1B}\u{0C}\u{0A}\u{0D}\u{09}\u{0B}';
  print(regex.pattern);
  print(regex.stringMatch(input) == input);
}

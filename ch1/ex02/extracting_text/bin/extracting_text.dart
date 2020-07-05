void main() {
  final myString = '25F8..25FF    ; Common # Sm   [8] UPPER LEFT TRIANGLE';

// find a variable length hex value at the beginning of the line
  final regexp = RegExp(r'^[0-9a-fA-F]+');

// find the first match though you could also do `allMatches`
  final match = regexp.firstMatch(myString);

// group(0) is the full matched text
// if your regex had groups (using parentheses) then you could get the
// text from them by using group(1), group(2), etc.
  final matchedText = match.group(0); // 25F8
  print(matchedText);
}

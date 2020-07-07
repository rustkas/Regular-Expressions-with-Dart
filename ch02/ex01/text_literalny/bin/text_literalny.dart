/// Create a regular expression that matches exactly the following sentence:
/// The punctuation characters in the ASCII table are:! ”#$%&’()*+,-./:;<=>?@[\]^_`{|} ~.
void main() {
  final regex = RegExp(r'The punctuation characters in the ASCII table are: '
      r'!”#\$%#&\(\)\*\+,-\./:;<=>\?@\[\\\]\^_`\{\|\} ~');
  final input = r'The punctuation characters in the ASCII table are: '
      r'!”#$%#&()*+,-./:;<=>?@[\]^_`{|} ~';

// stringMatch method result value should be the some as input text
  print(regex.stringMatch(input) == input);
}

/// Write a regular expression that matches a string consisting of
/// the ASCII characters
void main() {

  final regex = RegExp('\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F');
  final input = '\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F';
  print(regex.pattern);
  print(regex.stringMatch(input) == input);
}

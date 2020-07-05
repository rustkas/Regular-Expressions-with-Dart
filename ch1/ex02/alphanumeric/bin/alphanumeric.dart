void main() {
  final alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
  print(
      "alphanumeric.hasMatch('abc123') = ${alphanumeric.hasMatch('abc123')}"); // true
  print(
      "alphanumeric.hasMatch('abc123%') = ${alphanumeric.hasMatch('abc123%')}"); // false
}

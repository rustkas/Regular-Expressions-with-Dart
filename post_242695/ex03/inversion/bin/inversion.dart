void main() {
  final regex1 = RegExp('[^01]');

  final input1 = '11001000102100110';
  print(regex1.stringMatch(input1));
}

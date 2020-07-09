void main(List<String> arguments) {
  final regex = RegExp(r'(?<=\$)\d+');
  final input = r'1 индейка стоит $30';
  print(regex.stringMatch(input));
}

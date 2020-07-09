void main() {
  final regex = RegExp(r'\d+(?=€)');
  final text = '1 индейка стоит 30€';

  print(regex.stringMatch(text));
}

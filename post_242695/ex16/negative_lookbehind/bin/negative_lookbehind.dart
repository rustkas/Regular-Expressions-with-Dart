void main() {
  final regex = RegExp(r'\d+(?!€)(?=[a-z]+)');
  final text = '1 индейка стоит 30€(${30*80}rub.)';

  print(regex.stringMatch(text));
}

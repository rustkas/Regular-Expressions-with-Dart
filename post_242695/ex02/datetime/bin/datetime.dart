void main() {
  final regex1 = RegExp(r'\d\d-\d\d-\d\d\d\d \d\d:\d\d');
  final input1 = '30-01-2003 15:20';
  print(regex1.stringMatch(input1));

  final regex2 = RegExp(r'\d{2,2}-\d{2,2}-\d{4,4} \d{2,2}:\d{2,2}');
  print(regex2.stringMatch(input1));

  final pattern1 = '{2,2}';
  final pattern2 = '{4,4}';
  final regex3 = RegExp(r'\d'
      '${pattern1}'
      r'-\d'
      '${pattern1}'
      r'-\d'
      '${pattern2}'
      r' \d'
      '${pattern1}:'
      r'\d'
      '${pattern1}');
  print(regex3.stringMatch(input1));
}

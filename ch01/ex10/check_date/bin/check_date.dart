import 'lib/date_generator.dart';

void main() {
  final delimiter = getDelimiter();
  final value1 = getDay();
  final value2 = getMonth();
  final value3 = getYear();
  final dateString = '${value1}${delimiter}${value2}${delimiter}${value3}';
  print('Random date is $dateString');

  var expList = [
    RegExp('0?[0-9].0?[0-9].[0-9]+[0-9]?[0-9]?[0-9]?'),
    RegExp('0?[0-9][./-]0?[0-9][./-][0-9]+[0-9]?[0-9]?[0-9]?')
  ];
  var checkResul = true;
  for (var exp in expList) {
    if (!exp.hasMatch(dateString)) {
      checkResul = false;
    }
  }

  if (checkResul) {
    print('Date $dateString is ok');
  } else {
    throw Exception('Date $dateString is not valid!');
  }
}

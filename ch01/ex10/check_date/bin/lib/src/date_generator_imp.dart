import 'dart:math';

final random = Random();

String getDay() {
  String result;
  var dayInt = random.nextInt(32);
  if (dayInt == 0) {
    dayInt++;
  }
  result = dayInt.toString();
  if (dayInt < 10) {
    result = '0$result';
  }
  return result;
}

String getMonth() {
  String result;
  var monthInt = random.nextInt(13);
  if (monthInt == 0) {
    monthInt++;
  }
  result = monthInt.toString();
  if (monthInt < 10) {
    result = '0$result';
  }
  return result;
}

String getYear() {
  String result;
  var yearInt = random.nextInt(DateTime.now().year + 1);
  if (yearInt <1000) {
    yearInt += 1000;
  }
  result = yearInt.toString();
  return result;
}

String getDelimiter() {
  String result;
  final array = '-./'.split('');
  result = array[random.nextInt(array.length)];
  return result;
}

import 'dart:math';

void main() {
  final array = ['Robert', 'Bob'];
  var exp = RegExp('Robert|Bob');
  var random = Random();
  final value = array[random.nextInt(array.length)];
  if (exp.hasMatch(value)) {
    print('The name $value is valid');
  } else {
    throw Exception('The name $value is not valid');
  }
}

void main(List<String> arguments) {
  print('Hello world!');

  var re = RegExp('hello');
  const text = 'hello, Dart';

  print('[$re].hasMatch(text) = ${re.hasMatch(text)}'); // True
  
}

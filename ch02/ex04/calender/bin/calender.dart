void main() {
  final regex = RegExp('c[ae]l[ae]nd[ae]r');

  final array = [
    'calender',
    'celender',
    'calander',
    'celender',
    'calendar',
    'celendar'
  ];

  for (var i=0; i < array.length; i++) {
    var stringMatch = regex.stringMatch(array[i]);
    if (!(stringMatch == array[i])) {
      throw Exception('Error ${stringMatch}');
    }
  }
}

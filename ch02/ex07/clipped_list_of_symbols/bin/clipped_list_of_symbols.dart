void main() {
  final regex1 = RegExp('[a-fA-F]');

  final array = 'abcdfABCDF'.split('');
  for (var i = 0; i < array.length; i++) {
    if (regex1.stringMatch(array[i]) != array[i]) {
      throw Exception('${array[i]}');
    }
  }
}

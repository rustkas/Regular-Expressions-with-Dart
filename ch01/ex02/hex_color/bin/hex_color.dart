void main() {
  final hexColor = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
print('Regular expression => ${hexColor}');
  print("hexColor.hasMatch('#3b5') = " "${hexColor.hasMatch('#3b5')}"); // true
  print("hexColor.hasMatch('#FF7723') = "
      "${hexColor.hasMatch('#FF7723')}"); // true
  print("hexColor.hasMatch('#000000z') = "
      "${hexColor.hasMatch('#000000z')}"); // false
}

import 'dart:html';

import 'package:regex_web2/app_lib.dart';

void main() {
  final InputElement textBox = document.getElementById('input-text');
  final InputElement regexBox = document.getElementById('input-regex');
  final alertBox = document.getElementById('alert-box');
  final resultsBox = document.getElementById('results-box');
  final ButtonElement testButton = document.getElementById('test_button');
  print(testButton);

  testButton.onClick.listen((event) {
// clear page from previous run
    clearResultsAndErrors(alertBox);

// get current values
    final text = textBox.value;
    final regexValue = regexBox.value;

    RegExp regex;
// handle empty values
    if (text.isEmpty) {
      err('Please, enter some text to test.');

      print('Please, enter some text to test.');
    } else if (regexValue.isEmpty) {
      print('Please, enter a regular expression.');
      err('Please, enter a regular expression.');
    } else {
      regex = createRegex(regexValue);

      if (regex == null) {
        return;
      }

// get matches
      var results = getMatches(regex, text);

      if (results != null && results.isNotEmpty && results[0] != null) {
        var html = getMatchesCountString(results);
        html += getResultsString(results, text);
        resultsBox.innerHtml = html;
      } else {
        resultsBox.innerHtml = 'There were no matches';
      }
    }
  });
}
//webdev serve

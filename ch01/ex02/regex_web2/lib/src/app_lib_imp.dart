import 'dart:html';

Element alertBox;
void clearResultsAndErrors(Element alertBoxValue) {
  alertBox = alertBoxValue;
  alertBox.innerHtml = '';
  alertBox.classes.add('hide');
  alertBox.innerHtml = '';
}

void err(String message) {
  alertBox.classes.remove('hide');
  alertBox.innerHtml = message;
}

RegExp createRegex(String regexString) {
  RegExp regex;
  try {
    regex = RegExp(regexString);
  } on FormatException catch (_) {
    err('The Regular Expression is invalid.');
  }
  return regex;
}

List<RegExpMatch> getMatches(RegExp regex, String text) {
  List<RegExpMatch> results;

  if (regex != null && text != null) {
    results = List.from(regex.allMatches(text));
  } else {
    throw Exception('Wrong input');
  }

  return results;
}

String getMatchesCountString(List<RegExpMatch> results) {
  if (results.length == 1) {
    return '<p>There was one match.</p>';
  } else {
    return '<p>There are ${results.length} matches.</p>';
  }
}

String getResultsString(List<RegExpMatch> results, String text) {
  var result = '';
  if (results != null && text != null) {
    results.forEach((element) {
      var match = '<span class="label label-info">${element.input} </span>';
      result += match;
    });
  }
  result = '<h4>$result</h4>';
  return result;
}

import 'package:flutter_test/flutter_test.dart';

import 'package:when_expression/when.dart';

void main() {
  test('it generally works', () {
    assert(when({
      (v) => v == 1: (_) => "a",
      (v) => v == 2: (_) => "b",
      (v) => v == 3: (_) => "c",
      (v) => v == 4: (_) => "d",
      (v) => v == 5: (_) => "e",
      (v) => v == 6: (_) => "f",
      (v) => v == 7: (_) => "g",
      (v) => v == 8: (_) => "h",
    })(5) == "e");
  });
  test('else works', () {
    assert(when<String, String>({
      (v) => v == 'taw': (_) => 'ok',
      (v) => v == 'wta': (_) => 'ok',
      (v) => v == 'atw': (_) => 'ok',
      (v) => v == 'twa': (_) => 'ok',
      (v) => true: (_) => 'fail'
    })('wat') == 'fail');
  });
  test('first works second does not', () {
    assert(when<int, String>({
      (v) => v == 1: (_) => "a",
      (v) => v == 2: (_) => "b",
      (v) => v == 2: (_) => "c",
      (v) => v == 8: (_) => "h",    
    })(2) == "b");
  });
}

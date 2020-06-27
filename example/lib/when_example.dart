library when_example;

import 'package:when_expression/when_expression.dart';

void main() {
  final myWhenStatement = when<int, String>({
    (v) => v == 1: (_) => "a",
    (v) => v == 2: (_) => "b",
    (v) => v == 2: (_) => "c",
    (v) => v == 4: (_) => "d",
    (v) => true: (_) => "you're a failure"
  });

  print("out: ${myWhenStatement(1)}"); // out: a
  print("out: ${myWhenStatement(2)}"); // out: b
  print("out: ${myWhenStatement(10000)}"); // out: you're a failure
}
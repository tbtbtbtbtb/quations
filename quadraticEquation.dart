import 'dart:math';

void main() {
  quadraticEquation(11, -120, -11); // Должен вывести x1=11, x2=-0.09
  quadraticEquation(1, 6, 9); // Должен вывести: x=3
  quadraticEquation(1, 1, 1); // Должен вывести: нет корней
}

void quadraticEquation(a, b, c) {
  var d = (b * b) - (4 * a * c);
  if (d > 0) {
    var x1 = (-b + sqrt(d)) / (2 * a);
    var x2 = (-b - sqrt(d)) / (2 * a);
    print("x1=$x1, x2=$x2");
  }

  if (d == 0) {
    var x = (-b) / 2 * a;
    print("x=$x");
  }

  if (d < 0) print('нет корней');
}

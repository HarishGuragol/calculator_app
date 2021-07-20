class CalculatorBrain {
  CalculatorBrain({this.v1, this.v2, this.op});
  final double v1;
  final double v2;
  final String op;
  double result;
  double getres() {
    if (op == '+') {
      return v1 + v2;
    } else if (op == '-') {
      return v1 - v2;
    } else if (op == '*') {
      return v1 * v2;
    } else if (op == '/') {
      return v1 / v2;
    } else {
      return 0;
    }
  }
}

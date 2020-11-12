import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fibonacci_c_binding/fibonacci.dart';

class DartRecursiveFibonacci extends BenchmarkBase {
  const DartRecursiveFibonacci() : super('Dart Recursive Fibonacci');

  static void main() {
    DartRecursiveFibonacci().report();
  }

  @override
  void run() {
    dartRecursiveFibonacci(50);
  }
}

class DartLinearFibonacci extends BenchmarkBase {
  const DartLinearFibonacci() : super('Dart Linear Fibonacci');

  static void main() {
    DartLinearFibonacci().report();
  }

  @override
  void run() {
    dartLinearFibonacci(50);
  }
}

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fibonacci_c_binding/fibonacci.dart';

class DartFibonacci extends BenchmarkBase {
  const DartFibonacci() : super('Dart Fibonacci');

  static void main() {
    DartFibonacci().report();
  }

  @override
  void run() {
    dartFibonacci(50);
  }
}

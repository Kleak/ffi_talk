import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fibonacci_c_binding/fibonacci.dart';

class NativeFibonacci extends BenchmarkBase {
  const NativeFibonacci() : super('Native Fibonacci');

  static void main() {
    NativeFibonacci().report();
  }

  @override
  void run() {
    nativeFibonacci(50);
  }

  @override
  void setup() {
    initLibrary('../fibonacci_library/libfibonacci.so');
  }
}

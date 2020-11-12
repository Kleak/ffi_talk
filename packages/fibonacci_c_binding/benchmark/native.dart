import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:fibonacci_c_binding/fibonacci.dart';

class NativeRecursiveFibonacci extends BenchmarkBase {
  const NativeRecursiveFibonacci() : super('Native Recursive Fibonacci');

  static void main() {
    NativeRecursiveFibonacci().report();
  }

  @override
  void run() {
    nativeRecursiveFibonacci(50);
  }

  @override
  void setup() {
    initLibrary('../fibonacci_library/libfibonacci.so');
  }
}

class NativeLinearFibonacci extends BenchmarkBase {
  const NativeLinearFibonacci() : super('Native Linear Fibonacci');

  static void main() {
    NativeLinearFibonacci().report();
  }

  @override
  void run() {
    nativeLinearFibonacci(50);
  }

  @override
  void setup() {
    initLibrary('../fibonacci_library/libfibonacci.so');
  }
}

import 'package:fibonacci_c_binding/fibonacci.dart';
import 'package:test/test.dart';

import 'src/result.dart';

void main() {
  group('Native', () {
    setUp(() {
      initLibrary('../fibonacci_library/libfibonacci.so');
    });

    test('recursive', () {
      var count = 0;
      for (var expectedResult in results) {
        final result = nativeRecursiveFibonacci(count);
        expect(
          result,
          equals(expectedResult),
          reason: 'fib($count) should be equal to $expectedResult but we got $result',
        );
        count++;
      }
    });

    test('linear', () {
      var count = 0;
      for (var expectedResult in results) {
        final result = nativeLinearFibonacci(count);
        expect(
          result,
          equals(expectedResult),
          reason: 'fib($count) should be equal to $expectedResult but we got $result',
        );
        count++;
      }
    });
  });
}

import 'package:fibonacci_c_binding/fibonacci.dart';
import 'package:test/test.dart';

import 'src/result.dart';

void main() {
  group('Dart', () {
    test('recursive', () {
      var count = 0;
      for (var expectedResult in results) {
        final result = dartRecursiveFibonacci(count);
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
        final result = dartLinearFibonacci(count);
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

import 'dart:ffi' as ffi;

typedef recursive_fibonacci_func = ffi.Int32 Function(ffi.Int32);
typedef Fibonacci = int Function(int);

typedef linear_fibonacci_func = ffi.Int32 Function(ffi.Int32);
typedef LinearFibonacci = int Function(int);

ffi.DynamicLibrary _libFibonacci;
Fibonacci _recursiveFibonacci;
Fibonacci _linearFibonacci;

void initLibrary(String libraryPath) {
  _libFibonacci = ffi.DynamicLibrary.open(libraryPath);
  _recursiveFibonacci = _libFibonacci.lookupFunction<recursive_fibonacci_func, Fibonacci>('recursiveFibonacci');
  _linearFibonacci = _libFibonacci.lookupFunction<linear_fibonacci_func, Fibonacci>('linearFibonacci');
}

int nativeRecursiveFibonacci(int n) => _recursiveFibonacci(n);

int nativeLinearFibonacci(int n) => _linearFibonacci(n);

int dartRecursiveFibonacci(int n) {
  if (n == 0) {
    return 0;
  }
  return (n > 2) ? (dartRecursiveFibonacci(n - 1) + dartRecursiveFibonacci(n - 2)) : 1;
}

int dartLinearFibonacci(int n) {
  double y = 0, x = 1, aux;

  for (var i = 0; i < n; i++) {
    aux = y;
    y = x;
    x = x + aux;
  }
  return y.round();
}

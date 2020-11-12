import 'dart:ffi' as ffi;

typedef fibonacci_func = ffi.Int32 Function(ffi.Int32);

typedef Fibonacci = int Function(int);

ffi.DynamicLibrary _libFibonacci;
Fibonacci _fibonacci;

void initLibrary(String libraryPath) {
  _libFibonacci = ffi.DynamicLibrary.open(libraryPath);
  _fibonacci = _libFibonacci.lookupFunction<fibonacci_func, Fibonacci>('fibonacci');
}

void nativeFibonacci(int n) => _fibonacci(n);

int dartFibonacci(int n) => (n > 2) ? (dartFibonacci(n - 1) + dartFibonacci(n - 2)) : 1;

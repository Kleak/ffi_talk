import 'dart:ffi' as ffi;

typedef fibonacci_func = ffi.Void Function();

typedef Fibonacci = void Function();

ffi.DynamicLibrary _libFibonacci;
Fibonacci _fibonacci;

void initLibrary(String libraryPath) {
  _libFibonacci = ffi.DynamicLibrary.open(libraryPath);
  _fibonacci = _libFibonacci.lookup<ffi.NativeFunction<fibonacci_func>>('fibonacci').asFunction();
}

void nativeFibonacci(int n) => _fibonacci();

int dartFibonacci(int n) => (n > 2) ? (dartFibonacci(n - 1) + dartFibonacci(n - 2)) : 1;

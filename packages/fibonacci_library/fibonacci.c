int recursiveFibonacci(int n) {
	if (n == 0) {
		return 0;
	}
    return (n > 2) ? (recursiveFibonacci(n - 1) + recursiveFibonacci(n - 2)) : 1;
}

int linearFibonacci(int n) {
    long y=0, x=1, aux;

	for(int i=0; i < n; i++) {
	    aux = y;
	    y = x;
	    x = x + aux;
	}
	return (int)y;
}

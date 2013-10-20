/*
 *  euler2.cpp
 *  
 *
 *  Created by Timo Sand on 10.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>

unsigned int fib(unsigned int n);

int main() {
	
	int test = 4000000;
	int sum = 0;
	int temp = 0;
	
	for (int i = 0; i < 1000; i++) {
		
		temp = fib(i);
		if (temp > test) {
			break;
		}
		if ((temp % 2) == 0) {
			sum += temp;
		}
	}
	
	std::cout << "The sum is: " << sum << std::endl;
	
	return 0;
}

unsigned int fib(unsigned int n) {
	
	if (n < 2) {
		return n;
	} else {
		return fib(n-1) + fib(n -2);
	}
}
	

/*
 *  euler10.cpp
 *  
 *
 *  Created by Deiga on 19.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 /
 *
 * Problem 10
 * The sum of the primes below 10 is 2+3+5+7=17.
 * Find the sum of all the primes below two million.
 */

#include <iostream>

long long testPrime(long long);

int main() {
	
	int max = 2000000;
	long long sum = testPrime(max);
	
	std::cout << "The sum of all the primes below 2 million is: " << sum << std::endl;
	
	return 0;
	
	
	
}


long long testPrime(long long max) { // array of Eratostheses
	
	bool array[max];
	long long store = 0;
	
	for(int i= 0; i < max; i++)
		array[i] = true;
	
	for (int i = 2; i < max ; i++) {
		if ( array[i] == true) {
			for (int n = i; n < max; n += i) {
				if ( n == i) {
				//	std::cout << i << std::endl;
					store += i;					
				} else { 
					array[n] = false;
				}
				
			}
			
		}
		
		
	}
	return store;
}

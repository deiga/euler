/*
 *  euler7.cpp
 *  
 *
 *  Created by Timo Sand on 12.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>
#include <climits>
#include <cmath>

int testPrime(long long max);

int main() {
	
	int max = INT_MAX;
	long long maxL = 600851475143LL;
	
	std::cout << "The 10001st prime is: " << testPrime(maxL) << std::endl;
	
	return 0;
}

int testPrime(long long max) { // array of Eratostheses
	
	int leng = sqrt(max);
	bool array[leng];
	int store = 0;
	int count = 0;
	
	for(int i= 0; i < leng; i++)
		array[i] = true;
	
	for (int i = 2; i < leng ; i++) {
		if ( array[i] == true) {
			for (int n = i; n < leng; n += i) {
				if ( n == i) {
					count++;
				//	std::cout << count << ", " << i << ". Next: ";
					if (count == 10001) {
						store = i;
						return store;
					}
				} else { 
					array[n] = false;
				}
			}
		}
		
	}
}


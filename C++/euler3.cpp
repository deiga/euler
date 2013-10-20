/*
 *  euler3.cpp
 *  
 *
 *  Created by Timo Sand on 10.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>
#include <cmath>

int testPrime(long long);

int main() {
	
	int store = 0;
	long long max = 600851475143LL;
	
	
	std::cout << "The highest prime factor of " << max << " is: " << testPrime(max) << std::endl;			
			
}

int testPrime(long long max) { // array of Eratostheses
	
	int leng = sqrt(max);
	bool array[leng];
	int store = 0;
	int answer = 0;
	
	for(int i= 0; i < leng; i++)
		array[i] = true;
	
	for (int i = 2; i < leng ; i++) {
		if ( array[i] == true) {
			for (int n = i; n < leng; n += i) {
				if ( n == i) {
					store = i;
					//std::cout << store << std::endl;
					if ((max % store) == 0) {
						if (store > answer) {
							answer = store;
						}
					}
				} else { 
					array[n] = false;
				}
			}
		}
			
	}
	
	return answer;
}
	

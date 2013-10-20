/*
 *  euler 14.cpp
 *  
 *
 *  Created by Deiga on 19.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 *
 * Problem 14
 * The following iterative sequence is defined for the set of positive integers:
 * n -> n/2 (n is even)
 * n -> 3n + 1 (n is odd)
 * Which starting number, under ine million, produces the longest chain?
 */

#include <iostream>

bool testEven(int test) {
	if ( (test % 2) == 0) {
		return true;
	}
	return false;
}

int sequence(int);

int main() {

	int store = 0, longest = 0, startNum = 0, max = 1000000;
	
	for (int i = 1; i < max; i++) {
		store = sequence(i);
		if ( store >= longest) {
			startNum = i;
			longest = store;
		}
	}
	
	std::cout << "The longest iterative sequence is " << longest << " steps long, with the starting number of: " << startNum << std::endl;
	
	
}
		
int sequence(int start) {
	
	int length = 1;
	int temp = start;
	
	while (temp > 1) {
		if (testEven(temp)) {
			temp /= 2;
		}
		else {
			temp = (3*temp) + 1;
		}
		length++;
	}
	
	return length;
			
}		

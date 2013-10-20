/*
 *  euler6.cpp
 *  
 *
 *  Created by Timo Sand on 12.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>
#include <cmath>

int main() {
	
	int sum1 = 0, sum2 = 0, answer = 0, temp = 0, diff;
	
	for ( int i = 1; i <= 100; i++) {
		sum1 += pow(i, 2);
		sum2 += i;
	}
	temp = pow(sum2, 2);
	if ( sum1 > temp) {
		diff = sum1 - temp;
	} else diff  = temp - sum1;
	
	std::cout << "The difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: " << diff << std::endl;
	
	return 0;
}


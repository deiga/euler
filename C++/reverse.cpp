/*
 *  reverse.cpp
 *  
 *
 *  Created by Timo Sand on 10.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>

int main() {
	
	int n = 12345, m = 0;
	
	std::cout << "Original No: " << n << std::endl;
	while(n > 0) {
		m *= 10;
		m += n % 10;
		n /= 10;
	}
	
	std::cout << "Reversed No: " << m << std::endl;
	
	return 0;
}

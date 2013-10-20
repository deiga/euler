/*
 *  euler1.cpp
 *  
 *
 *  Created by Timo Sand on 10.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>

int main() {

	int sum = 0;
	int mult3 = 3;
	int mult5 = 5;
	
	for(int i = 0; i < 1000; i++) {
		
		if ((i % 3) == 0) {
			sum += i;
		}
		else if ((i % 5) == 0) {
			sum += i;
		}
	}

	
	std::cout << "The sum is: " << sum << std::endl;
	
	return 0;

}


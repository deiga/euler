/*
 *  euler5.cpp
 *  
 *
 *  Created by Timo Sand on 11.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>
#include <climits>

bool div_check(int);

int main() {
	
	int store = 0, max = INT_MAX;
	
	for (int i = 1; i <= max; i++) {
	//	std::cout << i << std::endl;
		if (div_check(i)) {
		//	std::cout << "I went here! And broke." << div_check(i) << std::endl;
			store = i;
			break;				
		}
	}
	std::cout << "The smallest evenly divisible number is: " << store << std::endl;
			
}
	
	bool div_check(int num) {
		
		for (int i = 20; i >= 1; i--) {
			if ((num % i) == 0) {
				//std::cout << num << " is divisible by: " << i << std::endl;
			} else {
				return false;
			}
		}
		return true;
	}
			



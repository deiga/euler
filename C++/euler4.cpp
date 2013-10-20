/*
 *  euler4.cpp
 *  
 *
 *  Created by Timo Sand on 10.9.2008.
 *  Copyright 2008 Helsinki University. All rights reserved.
 *
 */

#include <iostream>
#include <string>
#include <cstdlib>
#include <sstream>

int reverse(int num);
int revstring(int);

int main() {
	
	int start = 100, stop = 999, store = 0, temp = 0, revtemp = 0;
	
	for (int i = start; i <= stop; i++) {
		for (int n = start; n <= stop; n++) {
			/*if ( i > 950 && n > 950) {
				std::cout << i << ", " << n << std::endl;
			}*/
			temp = i*n;
			revtemp = revstring(temp);
			if ( revtemp == temp) {
			//	std::cout << "The sum of " << i << " * " << n << " is: " << temp << " and it's reverse is " << revtemp << std::endl;
				if (temp > store) {
					store = temp;
				}
			}
		}
	}
	
	std::cout << "The largest palindrome from a 3-digit multiplication is: " << store << std::endl;
	
	return 0;
		
}


int revstring(int num) {
	
	std::string ns;
	int temp = 0;
	std::stringstream out;
	
	out << num;
	ns = out.str();
	
	std::reverse(ns.begin(),ns.end());
	
	std::istringstream ss(ns);
	ss >> temp;
	
	return temp;
	
}
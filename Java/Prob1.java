/*Find the sum of all the multiples of 3 or 5 below 1000.*/


public class Prob1 {

	public static void main(String[] args) {
		
		int sum = 0;
		int koljako, viijako,temp3,temp5,i;
		koljako = 3;
		viijako = 5;
		temp3 = 0;
		temp5 = 0;
		i = 0;
		
		while (temp5 < 995) {
			i++;
			temp5 = viijako*i;
			sum += temp5;
		}
		i = 0;
		while (temp3 < 999) {
			i++;
			temp3 = koljako*i;
			if (temp3 % 5 != 0)
				sum += temp3;
		}
		
		System.out.println("The sum of all the multipliers is: "+sum);
	}

}

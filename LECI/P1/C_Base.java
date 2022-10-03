public class C_Base {
	
	public static void main (String[] args) {
		
		//criou um objeto(corvette) com as carateristicas de car
		car corvette = new car();
		
		//criou um objeto(buickRiviera) com as carateristicas de car
		car buickRiviera = new car();
		
		
		//storing info into object variables
		corvette.passengers = 2;
		corvette.maxSpeed = 230;				//km/h
		corvette.fuelCapacity = 50;				//liters
		corvette.fuelBurnRate = 4.5;			//liters/h
		//all the specifications of the object(corvette) are filled
		
		//storing info into object variables
		buickRiviera.passengers = 4;
		buickRiviera.maxSpeed = 200;				//km/h
		buickRiviera.fuelCapacity = 40;				//liters
		buickRiviera.fuelBurnRate = 5;			//liters/h
		//all the specifications of the object(buickRiviera) are filled
		
		
		
		//System.out.print
			//corvette
		System.out.println("Corvette:");
		System.out.println(corvette.passengers+" passengers");
		System.out.println(corvette.maxSpeed+" km/h");
		System.out.println(corvette.fuelCapacity+" liters");
		System.out.println(corvette.fuelBurnRate+" liters/h");
					
			//inside the class
		corvette.calculateEndurance();
			//inside the class but return a value to main
		System.out.printf("The Endurance of Corvette is %4.2f hours.%n",corvette.R_calculateEndurance());
		
			//inside class fullNeeded(double var as an input)
		System.out.printf("For Corvette to drive for 2.5h, it takes %4.2f gallons%n%n",corvette.fuelNeeded(2.5));
		
		
			//buickRiviera
		System.out.printf("%nBuick Riviera 73:%n");
		System.out.println(buickRiviera.passengers+" passengers");
		System.out.println(buickRiviera.maxSpeed+" km/h");
		System.out.println(buickRiviera.fuelCapacity+" liters");
		System.out.println(buickRiviera.fuelBurnRate+" liters/h");
		
			//inside the class
		buickRiviera.calculateEndurance();
			//inside the class but return a value to main
		System.out.printf("The Endurance of buickRiviera is %4.2f hours.%n",buickRiviera.R_calculateEndurance());
			//inside class fullNeeded(double var as an input)
		System.out.printf("For buickRiviera to drive for 2.5h, it takes %4.2f gallons%n%n",buickRiviera.fuelNeeded(2.5));
		
		
		//Endurance
		System.out.printf("%nOutside of the Class:");
		
		double corvetteEndurance = corvette.fuelCapacity/corvette.fuelBurnRate;
		System.out.printf("%nThe Endurance of Corvette is %4.2f hours.",corvetteEndurance);
		
		double buickRivieraEndurance = buickRiviera.fuelCapacity/buickRiviera.fuelBurnRate;
		System.out.printf("%nThe Endurance of Corvette is %4.2f hours.",buickRivieraEndurance);
	}
}


//Especifica q sempre q criarem um objeto terá as carateristivas de car

class car{
	int passengers;
	int maxSpeed;
	double fuelCapacity;
	double fuelBurnRate;
	
	
	//method to calculate the endurance(void type);
	void calculateEndurance(){
		double endurance = fuelCapacity/fuelBurnRate;
		
		System.out.printf("%nThe Endurance is %4.2f hours.%n",endurance);
	}
	
	//method to calculate the endurance(return value);
	double R_calculateEndurance(){
		double endurance = fuelCapacity/fuelBurnRate;
		return endurance;
	}
	
	//method to calculate how much fuel is needed(double var as an input)
	double fuelNeeded(double time){
		return fuelBurnRate * time;
	}
}


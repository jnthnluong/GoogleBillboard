public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  //System.out.println(e.length());
  //part 1
  for (int i = 2; i < e.length()-10; i++) {
    double temp = Double.parseDouble(e.substring(i, i+10));

    if (isPrime(temp)) {
      //System.out.println(temp);
      System.out.println(e.substring(i, i+10));
      break;
    }
  }
  //end of part 1

  //part 2
  int sum = 0;
  int cycles = 1;
  for (int i = 2; i < e.length()-9; i++) {
    sum = 0;
    //System.out.println("starting sum");
    for (int g = i; g < i+10; g++) { //summing the next 10 digits

      //System.out.println(sum);
      sum+=Double.parseDouble(e.substring(g, g+1));
      //System.out.println(sum);
      
      } 
      if (sum == 49) {
        System.out.println("hit 49");
        sum = 0;
        System.out.println("f("+cycles+") = " + e.substring(i, i+10)); //display f(x)
        cycles++;
        
    }
  }
  //f(5) == 5966290435
  //end of part 2
}  


public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) return false;
  for (int i =  2; i <= Math.sqrt(dNum); i++) {
    if (dNum%i == 0) return false;
  }
  return true;
} 

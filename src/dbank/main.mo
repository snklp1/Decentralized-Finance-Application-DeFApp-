import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor Dbank 
{
  stable var currentValue : Float = 300;
  //currentValue:=100;
  Debug.print(debug_show(currentValue));

  

  stable var startTime = Time.now();
  Debug.print(debug_show(startTime));
  
  public func topUp(amount: Float)
  {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float)
  {
    let temp: Float = currentValue - amount;
    if(temp>=0)
    {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    }
    else
    {
      Debug.print("The amount entered exceeds limits");
    }
  };

  public query func checkBalance() : async Float 
  {
    return currentValue;
  };

  public func compoundInterest()
  {
    let currentTime = Time.now();
    var timeElapsed = currentTime - startTime;
    timeElapsed := timeElapsed/1000000000;
    
    currentValue := currentValue * (1.0001 ** Float.fromInt(timeElapsed));
    startTime := currentTime;
  }

  

}




void main() {
  
  // 1 - Variables
  
  String nameVariable = "Nogueira"; //string always use double quotes
  int valueVariable = 0;
  bool isTrue = true;
  List<String> wordList = ["Gabriel", "Nogueira"];
  
  // 2 - null-safety
  String? name; // "let it be" null
  //print (name!); //use ! after the variable guarantees that it inst null
  
  late String lastName; // can no longer be null
  lastName = "Motta";
  
  // 3 - Switch and IF
  bool moveOn = false;
  if(moveOn){
    print("walk");
  } else {
    print("stop");
  }
  
  int intValue = 2;
  switch(intValue){
    case 0:
      print("Zero");
      break;
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    default:
      print("away");
  } 
  
  
  // 4 - loops
  
  for(int i = 1; i <= 10; i++){
    print(i*2);
  }
  
  int count = 10;
  while(count != 1) {
    count = count -1;
    print('loop  -> $count');
  }
  
  // 5 - classes, methods and attributes
  // class - anything that represents an object
  // methods - parts that execute a logic
  // attributes - color, size and others
  
  Phone nogueiraPhone = Phone("red", 4, 0.500, 5.7);
  print(nogueiraPhone);
  print(nogueiraPhone.phoneValue(1000));
  
  // 6 - OOP
  Car bmw = Car("bmw");
  Car gol = Car("gol");
  
  // 7 - inheritance, polymorphism and abstraction
  Nogueira nogueira = Nogueira();
  nogueira.talk();
  
  Payment payment = payBill();
  payment.pay();  
}

//polymorphism
abstract class Payment {
  void pay();
}

class payBill implements Payment {
  void pay(){
    print("pay the bill");
  }
}

class payPix implements Payment {
  void pay(){
    print("pay the pix");
  }
}


// inheritance
class Talk {
  String talk(){
    return "hi";
  }
}

class Nogueira extends Talk{
  
}


// abstraction
abstract class Person {
  
  String comunication();
  
}

class etPerson implements Person { //like a contract
  String comunication(){
    return "something";
  }
}

class nonETPerson implements Person {
  String comunication(){
    return "good morning";
  }
}

class Car {
  final String model; //public
  String _secret = "A lot of money"; //private
    
  int _value = 1000;
    
  int get carValue => _value;
  
  void setValue(int value) => _value = value;
  
  Car(this.model);
}

 class Phone {
    final String color;
    final int qtPros;
    final double size;
    final double weight;
      
    Phone(this.color, this.qtPros, this.weight, this.size);
   
   String toString() {
     return 'Color $color, qtPros $qtPros, Weight $weight, Size $size';
   }
   
   double phoneValue(double value){
     return value * qtPros;
   }
    
  }
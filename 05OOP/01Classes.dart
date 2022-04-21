class Person {
  /*here we have to inititalise the properties with some values because dart doesn't
  the properties to be declared un-initialised*/
  String name = 'Template name';
  int age = 00;

  Person(String inputname, int inputAge) {
    /*we can use the this. keyword incase both the passed parameter in the constructor 
    and the property has the same vaiable name*/
    this.name = inputname;
    //not using the this. keyword if not required will also work
    age = inputAge;
  }
  /*you can create multiple constructors with different functionalities for example in 
  this case we are setting the age 60 for old people as the constructor name suggests*/
  Person.veryOld(this.name) {
    age = 60;
  }
  void display() {
    print('Name: $name');
    print('Age: $age');
  }
}
/*this class has a contrustor with named argument so we can mix and match the order 
of the arguements or we can ignore some arguments but the catch is we'll have to 
write the name of the arguments*/
class Student {
  int? roll;
  String? name;

  /*here we can ignore arguements if we want while calling the function in this case 
  constructor so if don't want to pass in any values by default then we have to explicitly 
  say then can be null like what we did with inputroll*/
  Student({int? inputRoll, String name='Template name'}) {
    roll = inputRoll;
    this.name = name;
  } 
  void display() {
    print('Name: $name');
    print('Roll: $roll');
  }
}

//simple constructor
class Game {
  String? name;
  int? players;

  Game({this.name,this.players});

  void display() {
    print('Name : $name');
    print('Players: $players');
  }
}

void main() {
  //while creating a new object the best practice is to initiate the object with var
  var p1 = Person('Kaustav',20);
  p1.display();
  print('\n');

  var p2 = Person.veryOld('Clark');
  p2.display();
  print('\n');

  //since the contrusctor had named argument we could skip the argument inputRoll
  var s1 = Student(name : 'Lex');
  //roll isn't initialised so it'll be null
  s1.display();
  print('\n');

  //since the contrusctor had named argument we could mix and match the order of the arguments
  var s2 = Student(name: 'Kaustav',inputRoll: 60);
  s2.display();
  print('\n');

  var g1 = Game(name: 'Cricket', players: 22);
  g1.display();
}
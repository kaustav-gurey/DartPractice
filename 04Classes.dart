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
  void display() {
    print('Name: $name');
    print('Age: $age');
  }
}
//this class has a contrustor with named arguement 
class Student {
  int? roll;
  String? name;

  /*here if don't want to pass in any values by default then we have to explicitly 
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

void main() {
  //while creating a new object the best practice is to initiate the object with var
  var p1 = Person('Kaustav',20);
  p1.display();

  print('\n');

  var s1 = Student(name : 'Lex');
  s1.display();
  print('\n');
  
  var s2 = Student(name: 'Kaustav',inputRoll: 60);
  s2.display();
}
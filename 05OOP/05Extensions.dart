class Person{
  String? firstName;
  String? lastName;
  Person(this.firstName,this.lastName);
}
//it is like writing a method in teh class but outside the class
extension Run on Person{
  void run(){
    print('$firstName is running.');
  }
}
extension FullName on Person{
  String get fullName => '$firstName $lastName';
}

void main(){
  var fluffy = Person('Fluffy','Man');
  fluffy.run();
  print(fluffy.fullName);
}
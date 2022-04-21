class Cat {
  String name;
  //normal constructor
  Cat(this.name);
  factory Cat.flullBall() 
  {
    return Cat('Fluff Ball');
  }
}

void main(){
  //using normal constructor
  var cat1 = Cat('Simba');
  print(cat1.name);

  //using factory constructor
  var cat2 = Cat.flullBall();
  print(cat2.name);
}
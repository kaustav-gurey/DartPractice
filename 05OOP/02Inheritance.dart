abstract class LivingThing {
  void breathe(){
    print('LIving thing is breathing.');
  }
  
  void move(){
    print('I am moving.');
  }
}
//Cal inherits LivingThing so it has all the methods of LivingThing
class Cat extends LivingThing{}

void main(){
  //var man = LivingThing();
  //the line above won't work because class LivingThing is abstract
  var fluffers = Cat();
  fluffers.move();
}
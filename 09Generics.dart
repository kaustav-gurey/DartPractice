/*in this case A and B denote the datatype of teh members inside, we can 
decide the datatypes while creating teh object of the class*/
class Pair<A, B>{
  A? value1;
  B? value2;
  Pair(this.value1,this.value2);
  void display(){
    print(this.value1);
    print(this.value2);
    print('');
  }
}

void main(){
  //here A=string and B=String
  var names = Pair('Learning','Dart');
  names.display();

  //here A=string and B=int
  var names2 = Pair('Flutter',100);
  names2.display();

}
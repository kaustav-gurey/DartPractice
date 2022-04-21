class Cat {
  String name;
  Cat(this.name);

  //from now on everytime we use '==' with objects of class Cat the objects itselves 
  //won't be compared but their name members will be compared
  @override
  bool operator == (covariant Cat other) => other.name == name;


  //didn't understand this part but the code works without this part
  @override
  int get hashCode => name.hashCode;

}

void main(){
  var cat1 = Cat('Fluffy');
  print(cat1.name);

  var cat2 = Cat('Chikki');
  print(cat2.name);

  var cat3 = Cat('Chikki');

  print(cat1==cat2);
  print(cat2==cat3);
}
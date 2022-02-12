//in a class we can't just declare a property
//we have to initialise it
//this is beause Dart has this feature call Null Safety
//which says we can't declare a variable as null unless we explicitly say so
void main() {
  //syntax of declaringa  varaible as explicitly null
  int? n;
  //we can obviously change the data in the variable
  n = 9;
  for (var i = 0; i < n; i++) {
    print(i);
  }
  //we can assign null to n because while declaring n we explicitly said this variable can be null
  n = null;
  int x = 10;
  //this line wont work becasue we didn't explicitly declare x to be capable of becoming null
  //x = null;
}
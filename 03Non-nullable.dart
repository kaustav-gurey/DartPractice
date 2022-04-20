//in a class we can't just declare a property
//we have to initialise it
//this is beause Dart has this feature call Null Safety
//which says we can't declare a variable as null unless we explicitly say so
void main() {
  //syntax of declaringa  varaible as explicitly null
  int? n;
  print(n);
  //we can obviously change the data in the variable
  n = 9;
  print(n);
  for (var i = 0; i < n; i++) {
    print(i);
  }
  //we can assign null to n because while declaring n we explicitly said this variable can be null
  n = null;
  print(n);
  int x = 10;
  //the line below won't work becasue we didn't explicitly declare x to be capable of becoming null
  //x = null;

  //this means the list itself can be null but if teh list is not null then it can't contain any element that it null
  List<String>? names = ['Foo','Bar'];
  print(names);

  names = null;
  print(names);

  //this means the list itself can't be null but it can contain elements that are null
  List<String?> venom = ['We','are',null,'Venom'];
  print(venom);

  //this means the list can be null and it can also contain elements that are null
  List<String?>? places = ['home','office',null,'college'];
  print(places);

  places = null;
  print(places);


  //cherry picking non-null values
  String? firstName = null;
  String? secondName = null;
  String? lastName = 'Baz';

  var firstNonNull;
  if(firstName!=null){
    firstNonNull = firstName;
    print('firstName is not null');
  }
  else if(secondName!=null){
    firstNonNull = secondName;
    print('secondName is not null');
  }
  else if(lastName!=null){
    firstNonNull = lastName;
    print('lastName is not null');
  }
  else{
    print('Everything is null');
  }
  print(firstNonNull);

  //the if else block can be summarized with this
  var firstNonNullValue = firstName ?? secondName ?? lastName;
  print(firstNonNullValue);

  //null aware operator
  int? a = 10;
  //b is null
  int? b;
  print(b);
  //because b is null c is also null
  int? c = b;
  print(c);
  //this will not directly assign a to c, first this will check is c is null, if yes then it will assign the value of a to c
  c ??=a;
  print(c);
  //here because c is not null 20 is not assigned to c 
  c ??= 20;
  print(c);



}
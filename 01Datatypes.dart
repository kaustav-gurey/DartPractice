void main(){
  //integer
  int n = 9;
  
  //float
  double x = 8.9;
  
  //list or array
  List<String> name = ['keyboard','mouse','laptop'];
  
  //set : all elements are unique
  var names = {'foo','bar','baz'};
  
  print(names);

  names.add('foo');
  names.add('bar');

  //duplicates are ignores
  print(names);

  //maps or dictionaries in python
  var person = {'age':20, 'name':'Foo'};
  print(person);
  //existing key will alter it's value 
  person['name']='Foo Bar';
  print(person);
  //new key will add a new key value pair
  person['gender']='M';
  print(person);

}
//this is an asyncronous generator function
Iterable<int> getOneTwoThree() sync*{
  yield 1;
  yield 2;
  yield 3;
  yield 4;
  yield 5;
}

void main(){
  //this will print the return values in a list
  print(getOneTwoThree());
  
  print('\n');
  
  //this will iterate through the values and print them one by one
  for(var value in getOneTwoThree()){
    print(value);
  }

  print('\n');
  
  //we can do stuff like this with the capability of iterating through trh return values
  for(var value in getOneTwoThree()){
    print(value);
    if(value==2){
      break;
    }
  }

}
//this will return the value in this case a*2 after 3 seconds
Future<int> heavyFutureThatMultipliesByTwo(int a){
  return Future.delayed(const Duration(seconds: 3),(){
    return a*2;
  });
}

//the function that calls teh future function has to be asynchronous
void main() async{
  final result = await heavyFutureThatMultipliesByTwo(10);
  print(result);
}
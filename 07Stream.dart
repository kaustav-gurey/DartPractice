//stream can continuously and periodically return values
//this code will print 'Flutter' every 1 seconds
Stream<String> getName() {
  //return Stream.value('Flutter');
  return Stream.periodic(const Duration(seconds: 1),(value){
    return 'Flutter';
  });
}

void main() async{
  await for(var value in getName()) {
    print(value);
  }
  print('Stream finished working');
}
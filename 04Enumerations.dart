enum AnimalType{cat, dog, bunny}

enum PersonProperties{firtName, lastName, age} 

void test(AnimalType animalType){
  //sort of like a constructor i.e. will run everytime
  print(animalType);
  switch (animalType) {
    case AnimalType.bunny:
      print('Bunny');
      break;
    case AnimalType.cat:
      print('Cats');
      break;
    case AnimalType.dog:
      print('Dogs');
  }
}

void main(){
  /*will print "AnimalType.cat" then will print what will happen 
  if the AnimalType is cat i.e will print "Cats"*/
  test(AnimalType.cat);
  print(PersonProperties.age);  //prints "PersonProperties.age" 
  print(PersonProperties.lastName.name); //prints "lastname"
}
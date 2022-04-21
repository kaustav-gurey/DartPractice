enum AnimalType{cat, dog, bunny}

enum PersonProperties{firtName, lastName, age} 

void test(AnimalType animalType){
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
  test(AnimalType.cat);
  print(PersonProperties.age);
  print(PersonProperties.lastName.name);
}
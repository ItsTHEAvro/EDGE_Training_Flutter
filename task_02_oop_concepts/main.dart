import 'car.dart';

void main() {
  Car car1 = new Car(name: "Thunderbolt", color: "Black");
  Car car2 = new Car(name: "Fireblade", color: "Red");

  print("I have two cars. They go by names ${car1.name} and ${car2.name}.");

  print(
      "${car1.name}'s color is ${car1.color} and ${car2.name} is of ${car2.color} color.");

  print("${car1.name} makes ${car1.sound("Vrooooom")} sound.");

  print(
      "But my favourite is ${car2.name}. It sounds ${car2.sound("Vrrooooomm vrrrooooommm")}.");
}

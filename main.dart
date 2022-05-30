import 'dart:io';

void main() {
  var isWantToQuit = false;
  while (!isWantToQuit) {
    isWantToQuit = program();
  }
}

bool program() {
  var choice = null;
  print("Que voulez-vous faire ? (1: Hello / 2: votre nom / q: Quitter)");
  choice = stdin.readLineSync(); // capture ce que saisi l'utilisateur
  if (choice == "1") {
    gestionChoix1();
  } else if (choice == "2") {
    gestionChoix2();
  } else if (choice == "q") {
    print("Etes-vous sûr ? (oui/non)");
    var verif = stdin.readLineSync(); // capture ce que saisi l'utilisateur
    if (verif == "oui") {
      return true;
    } else {
      print("Mauvaise saisie : $choice n'est pas géré");
      return false;
    }
  }
  return false;
}

void gestionChoix1() {
  print("Hello world !");
}

void gestionChoix2() {
  print("Quel est votre nom !");
}
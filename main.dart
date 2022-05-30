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
  switch (choice) {
    case "1":
      gestionChoix1();
      break;
    case "2":
      gestionChoix2();
      break;
    case "q":
        return gestionChoixQ();
    default:
      gestionChoixInconnu(choice);
  }
  return false;
}

void gestionChoix1() {
  print("Hello world !");
}

void gestionChoix2() {
  print("Quel est votre nom ?");
}

bool gestionChoixQ() {
  print("Etes-vous sûr ? (oui/non)");
  var verif = stdin.readLineSync(); // capture ce que saisi l'utilisateur
  return verif == "oui";
}

void gestionChoixInconnu(String choice) {
  print("Mauvaise saisie : $choice n'est pas géré");
}
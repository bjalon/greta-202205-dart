double moyenne(List<int> valeurs) {
  var somme = 0;
  for (var valeur in valeurs) {
    somme += valeur;
  }
  return somme / valeurs.length;
}
main() {
  print(moyenne([5, 7, 6, 12, 14]));
}
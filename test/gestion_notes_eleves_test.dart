import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/gestionnaire_notes.dart';

void main() {
  test('Ajout d une note et visualisation de cette note', () {
    var gestionnaireNotes = GestionnaireNotes();
    gestionnaireNotes.add("Benjamin", 10);
    gestionnaireNotes.add("Marceline", 15);
    expect(gestionnaireNotes.getNotes("Benjamin"), [10]);
    expect(gestionnaireNotes.getNotes("Marceline"), [15]);
    expect(gestionnaireNotes.getNotes("Alexia"), []);
  });
  test('Ajout trois notes sur un élève et visualisation sa moyenne', () {
    var gestionnaireNotes = GestionnaireNotes();
    gestionnaireNotes.add("Benjamin", 10);
    gestionnaireNotes.add("Benjamin", 15);
    expect(gestionnaireNotes.getMoyenne("Benjamin"), 12.5);
  });
  test('Sans notes sur un élève et sa moyenne est nulle', () {
    var gestionnaireNotes = GestionnaireNotes();
    expect(gestionnaireNotes.getMoyenne("Benjamin"), null);
  });
}



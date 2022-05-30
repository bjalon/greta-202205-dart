
class GestionnaireNotes {

  Map<String, List<double>> notes = Map();

  void add(String eleve, double note) {
    if (notes[eleve] == null) {
      notes[eleve] = [];
    }
    notes[eleve]!.add(note);
  }

  List<double> getNotes(String eleve) {
    return notes[eleve] ?? [];
    // if (notes[eleve] == null) {
    //   return [];
    // } else {
    //   return notes[eleve]!;
    // }
  }

  double? getMoyenne(String eleve) {
    var _notes = notes[eleve];
    if (_notes == null) {
      return null;
    } else {
      var somme = 0.0;
      for (var note in _notes) {
        somme += note;
      }
      return somme / _notes.length;
    }

  }
}
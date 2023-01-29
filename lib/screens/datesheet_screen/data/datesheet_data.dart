class DataSheet {
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
   this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet( 'Français', 'Lundi', '9:00-11:00'),
  DataSheet( 'Mathématiques', 'Lundi', '11:15-13:15'),
  DataSheet( 'Anglais', 'Lundi', '14:15-16:15'),
  DataSheet( 'Arabe', 'Mardi', '9:00-13:15'),
  DataSheet( 'Physique', 'Mardi', '11:15-13:15'),
  DataSheet( 'Français', 'Mardi', '14:15-15:15'),
  DataSheet( 'Mathématiques', 'Mardi', '15:15-16:15'),
  DataSheet( 'Mathématiques', 'Mercredi', '9:00-11:00'),
  DataSheet( 'Français', 'Mercredi', '11:15-13:15'),
  DataSheet( 'I.S', 'Mercredi', '14:15am-16:15am'),
  DataSheet( 'Chimie', 'Jeudi', '9:00-11:00'),
  DataSheet( 'I.S', 'Jeudi', '11:15-12:15'),
  DataSheet( 'Arabe', 'Jeudi', '12:15-13:15'),
  DataSheet( 'Anglais', 'Jeudi', '14:15-16:15'),
  DataSheet( 'Art', 'Vendredi', '9:00-11:00'),
  DataSheet( 'EPS', 'Vendredi', '11:15-13:15'),
  DataSheet( 'Chimie', 'Vendredi', '14:15-15:15'),
  DataSheet( 'Physique', 'Vendredi', ':15:15-16:15'),
];

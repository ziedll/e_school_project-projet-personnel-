class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Chimie', 'l\'energie', '18 Fev 2023', '28 Fev 2023', 'En attente'),
  AssignmentData(
      'Physique', 'La mécanique', '10 Fev 2023', '20 Fev 2023', 'Rendu'),
  AssignmentData('Mathématiques', 'La fonction logarithmique', '2 Fev 2023', '3 Fev 2023',
      'Not Submitted'),
  AssignmentData(
      'Français', 'Dissertation', '18 Fev 2023', '28 Fev 2023', 'En attente'),
];

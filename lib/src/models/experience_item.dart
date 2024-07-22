class ExperienceItem {
  String companyName;
  DateTime startDate;
  DateTime? endDate;
  String mode;
  List<Designation> designations;

  ExperienceItem({
    required this.companyName,
    required this.startDate,
    required this.endDate,
    required this.mode,
    required this.designations,
  });
}

class Designation {
  String role;
  String mode;
  String? description;
  DateTime startDate;
  DateTime? endDate;
  String location;
  List<String> skills;

  Designation({
    required this.role,
    this.description,
    required this.startDate,
    this.endDate,
    required this.location,
    required this.skills,
    required this.mode,
  });
}

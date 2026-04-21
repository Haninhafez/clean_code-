class CompanyUserModel{
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyUserModel({required this.name, required this.catchPhrase, required this.bs});

factory CompanyUserModel.fromJson(Map<String, dynamic> json) {
    return CompanyUserModel(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }

  toJson() {}
}

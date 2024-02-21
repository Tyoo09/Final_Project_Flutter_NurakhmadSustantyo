class SourceModels {
  final String id;
  final String name;

  SourceModels({
    required this.id,
    required this.name,
  });

  factory SourceModels.fromJson(Map<String, dynamic> json) => SourceModels(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

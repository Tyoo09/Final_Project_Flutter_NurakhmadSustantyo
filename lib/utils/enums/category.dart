enum Categories {
  science,
  business,
  technology,
  sports,
  health,
  general,
  entertainment,
  allc,
}

extension CategoryExplaination on Categories {
  String get name {
    switch (this) {
      case Categories.science:
        return 'Science';
      case Categories.business:
        return 'Business';
      case Categories.technology:
        return 'Technology';
      case Categories.sports:
        return 'Sports';
      case Categories.health:
        return 'Health';
      case Categories.general:
        return 'General';
      case Categories.entertainment:
        return 'Entertainment';
      case Categories.allc:
        return 'ALLC';
    }
  }
}

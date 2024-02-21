enum Country { india, usa, mexico, arab, nz, israel, indonesia }

extension CountryExplanation on Country {
  String get name {
    switch (this) {
      case Country.india:
        return 'India';
      case Country.usa:
        return 'USA';
      case Country.mexico:
        return 'Mexico';
      case Country.arab:
        return 'United Arab Emirates';
      case Country.nz:
        return 'New Zealand';
      case Country.israel:
        return 'Israel';
      case Country.indonesia:
        return 'Indonesia';
    }
  }

  String get countryCode {
    switch (this) {
      case Country.india:
        return 'ind';
      case Country.usa:
        return 'usa';
      case Country.mexico:
        return 'mex';
      case Country.arab:
        return 'are';
      case Country.nz:
        return 'nzl';
      case Country.israel:
        return 'isr';
      case Country.indonesia:
        return 'idn';
    }
  }
}

// Map<String, String> countryName = {
//   'india' = 'India',
//   'usa' = 'USA',
//   'mexico' = 'Mexico',
//   'arab' = 'United Arab Emirates',
//   'nz' = 'New Zealand',
//   'israel' = 'Israel',
//   'indonesia' = 'Indonesia',
// };
class Country {
  final String nom;
  final String capitale;
  final String population;
  final String superficie;
  final String langues;
  final String countryCode; // ISO 3166-1 alpha-2 code (e.g., 'FR', 'TN')

  Country({
    required this.nom,
    required this.capitale,
    required this.population,
    required this.superficie,
    required this.langues,
    required this.countryCode,
  });

  /// Factory constructor to create a Country from JSON data
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      nom: json['nom'] ?? '',
      capitale: json['capitale'] ?? '',
      population: json['population'] ?? '',
      superficie: json['superficie'] ?? '',
      langues: json['langues'] ?? '',
      countryCode: json['countryCode'] ?? 'XX',
    );
  }

  /// Convert Country to JSON
  Map<String, dynamic> toJson() => {
        'nom': nom,
        'capitale': capitale,
        'population': population,
        'superficie': superficie,
        'langues': langues,
        'countryCode': countryCode,
      };
}

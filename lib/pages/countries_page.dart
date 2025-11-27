import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/country.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  late Future<List<Country>> _countriesFuture;

  @override
  void initState() {
    super.initState();
    _countriesFuture = _loadCountries();
  }

  /// Load countries from JSON file
  Future<List<Country>> _loadCountries() async {
    try {
      final String jsonString =
          await rootBundle.loadString('lib/data/pays_info.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      return jsonData.map((data) => Country.fromJson(data)).toList();
    } catch (e) {
      print('Error loading countries: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Liste des Pays',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 144, 144, 144),
        centerTitle: true,
        elevation: 4,
      ),
      drawer: _buildDrawer(context),
      body: FutureBuilder<List<Country>>(
        future: _countriesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Erreur: ${snapshot.error}'),
            );
          }

          final countries = snapshot.data ?? [];

          if (countries.isEmpty) {
            return const Center(
              child: Text('Aucun pays trouvé'),
            );
          }

          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final country = countries[index];
              return _buildCountryTile(context, country);
            },
          );
        },
      ),
    );
  }

  /// Build a country list tile
  Widget _buildCountryTile(BuildContext context, Country country) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: _buildFlagAvatar(country),
        title: Text(
          country.nom,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          'Capitale: ${country.capitale}',
          style: TextStyle(color: Colors.grey[600]),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {
          Navigator.of(context).pushNamed(
            '/country-detail',
            arguments: country,
          );
        },
      ),
    );
  }

  /// Build flag avatar using country code emoji or image
  Widget _buildFlagAvatar(Country country) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: _buildFlagContent(country.countryCode),
      ),
    );
  }

  /// Build flag content - image for Tunisia, emoji for others
  Widget _buildFlagContent(String countryCode) {
    if (countryCode == 'TN') {
      return Image.asset(
        'assets/images/Tunisia_Big.png',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Text(
              _getFlagEmoji(countryCode),
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      );
    }
    return Center(
      child: Text(
        _getFlagEmoji(countryCode),
        style: const TextStyle(fontSize: 30),
      ),
    );
  }

  /// Convert country code to flag emoji
  String _getFlagEmoji(String countryCode) {
    const flagMap = {
      'FR': '🇫🇷',
      'TN': '🇹🇳',
      'BR': '🇧🇷',
      'IT': '🇮🇹',
      'CA': '🇨🇦',
      'AU': '🇦🇺',
      'DE': '🇩🇪',
      'ES': '🇪🇸',
      'ZA': '🇿🇦',
    };
    return flagMap[countryCode] ?? '🏳️';
  }

  /// Build the navigation drawer
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 144, 144, 144),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.public,
                  size: 50,
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Atlas Géographique',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Home Option
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Accueil'),
            onTap: () {
              Navigator.of(context).pop(); // Close drawer
              Navigator.of(context).pushNamed('/');
            },
          ),
          const Divider(),
          // About Option
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('À propos'),
            onTap: () {
              Navigator.of(context).pop(); // Close drawer
              Navigator.of(context).pushNamed('/about');
            },
          ),
          const Divider(),
          // Exit Option
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Quitter'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Quitter l\'application?'),
                  content: const Text(
                    'Êtes-vous sûr de vouloir quitter l\'application?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Annuler'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context); // Close drawer
                        // Exit app
                      },
                      child: const Text('Quitter'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

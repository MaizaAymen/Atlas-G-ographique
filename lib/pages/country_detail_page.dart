import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryDetailPage extends StatelessWidget {
  final Country country;

  const CountryDetailPage({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          country.nom,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 144, 144, 144),
        centerTitle: true,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Large Flag Image
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  color: Colors.grey[200],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: _buildDetailFlagContent(country.countryCode),
                ),
              ),
              const SizedBox(height: 30),
              // Country Details Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow(
                        icon: Icons.location_city,
                        label: 'Capitale',
                        value: country.capitale,
                      ),
                      const Divider(height: 20),
                      _buildDetailRow(
                        icon: Icons.people,
                        label: 'Population',
                        value: country.population,
                      ),
                      const Divider(height: 20),
                      _buildDetailRow(
                        icon: Icons.square_foot,
                        label: 'Superficie',
                        value: country.superficie,
                      ),
                      const Divider(height: 20),
                      _buildDetailRow(
                        icon: Icons.language,
                        label: 'Langues officielles',
                        value: country.langues,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Back Button
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Retour'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 144, 144, 144),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// Build flag content for detail view - image for Tunisia, emoji for others
  Widget _buildDetailFlagContent(String countryCode) {
    if (countryCode == 'TN') {
      return Image.asset(
        'assets/images/Tunisia_Big.png',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Text(
              _getFlagEmoji(countryCode),
              style: const TextStyle(fontSize: 120),
            ),
          );
        },
      );
    }
    return Center(
      child: Text(
        _getFlagEmoji(countryCode),
        style: const TextStyle(fontSize: 120),
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

  /// Build a detail row with icon, label, and value
  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 28,
          color: const Color.fromARGB(255, 144, 144, 144),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

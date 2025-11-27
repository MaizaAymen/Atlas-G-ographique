import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'À propos',
          style: TextStyle(
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // App Logo
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 144, 144, 144).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.public,
                  size: 80,
                  color: const Color.fromARGB(255, 144, 144, 144),
                ),
              ),
              const SizedBox(height: 40),
              // App Information Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Atlas Géographique',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 144, 144, 144),
                            ),
                      ),
                      const SizedBox(height: 20),
                      _buildInfoRow('Version', '1.0.0'),
                      const SizedBox(height: 15),
                      _buildInfoRow('Réalisé par', 'Aymen'),
                      const SizedBox(height: 15),
                      _buildInfoRow('Année', '2025'),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 144, 144, 144).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child: const Text(
                          'Cette application mobile vous permet de découvrir un atlas géographique interactif. '
                          'Consultez la liste complète des pays, explorez leurs détails, visualisez leurs drapeaux, '
                          'et obtenez des informations essentielles sur la capitale, la population, la superficie et les langues officielles.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Features Section
              Text(
                'Fonctionnalités principales',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 144, 144, 144),
                    ),
              ),
              const SizedBox(height: 20),
              _buildFeatureTile(
                icon: Icons.list,
                title: 'Liste des pays',
                description: 'Consultez une liste complète de pays du monde',
              ),
              _buildFeatureTile(
                icon: Icons.details,
                title: 'Détails complets',
                description: 'Explorez les informations détaillées de chaque pays',
              ),
              _buildFeatureTile(
                icon: Icons.flag,
                title: 'Drapeaux',
                description: 'Visualisez les drapeaux nationaux',
              ),
              _buildFeatureTile(
                icon: Icons.navigation,
                title: 'Navigation fluide',
                description: 'Parcourez l\'application facilement',
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  /// Build information row
  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  /// Build feature tile
  Widget _buildFeatureTile({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 144, 144, 144).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: const Color.fromARGB(255, 144, 144, 144),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

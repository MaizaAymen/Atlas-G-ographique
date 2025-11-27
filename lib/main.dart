import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'pages/countries_page.dart';
import 'pages/country_detail_page.dart';
import 'pages/about_page.dart';
import 'models/country.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas Géographique',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 144, 144, 144),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/countries': (context) => const CountriesPage(),
        '/about': (context) => const AboutPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/country-detail') {
          final country = settings.arguments as Country;
          return MaterialPageRoute(
            builder: (context) => CountryDetailPage(country: country),
          );
        }
        return null;
      },
    );
  }
}

import 'package:flutter_shopping_app/core/app_flavor/flavor_config.dart';
import 'package:flutter_shopping_app/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      apiBaseUrl: 'https://dev-api.example.com',
      appIcon: ' ',
      appName: 'Shopping (Development)', 
    ),
  );
  initializeApp();
}
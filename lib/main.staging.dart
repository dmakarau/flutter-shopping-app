import 'package:flutter_shopping_app/core/app_flavor/flavor_config.dart';
import 'package:flutter_shopping_app/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.staging,
    values: FlavorValues(
      apiBaseUrl: 'https://staging-api.example.com',
      appIcon: ' ',
      appName: 'Shopping (Staging)', 
    ),
  );
  initializeApp();
}
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/presentation/settings/widgets/my_orders_tile.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/my_favorties_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MyFavortiesTile(),
            const SizedBox(height: 15),
            MyOrdersTile(),
            const SizedBox(height: 15),
            _languageSetting(context), 
          ],
        ),
      ),
    );
  }

  Widget _languageSetting(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showLanguageDialog(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Change your language',
            style: const TextStyle(fontSize: 18),
          ),
          Icon(Icons.arrow_drop_down), 
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                onTap: () {
                  _changeLanguage(context, 'en');
                },
              ),
              ListTile(
                title: const Text('العربية'), 
                onTap: () {
                  _changeLanguage(context, 'ar');
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _changeLanguage(BuildContext context, String languageCode) {
    context.setLocale(Locale(languageCode));
        Navigator.of(context).pop(); 

    
  }
}

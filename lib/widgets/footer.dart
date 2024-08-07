import 'package:flutter/material.dart';
import 'footerText.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5, // Space between items
        runSpacing: 5, // Space between lines
        children: const [
          FooterText(title: 'About'),
          FooterText(title: 'Advertising'),
          FooterText(title: 'Business'),
          FooterText(title: 'How Search Works'),
          FooterText(title: 'Privacy'),
          FooterText(title: 'Terms'),
          FooterText(title: 'Settings'),
        ],
      ),
    );
  }
}

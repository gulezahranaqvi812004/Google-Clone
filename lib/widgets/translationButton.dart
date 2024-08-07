import 'package:flutter/material.dart';

import 'languageText.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Text('Google offered in:'),
        SizedBox(width: 5),
        LanguageText(title: 'اردو'),
        SizedBox(width: 5),
        // LanguageText(title: 'بنگالی'),
        // SizedBox(width: 5),
        // LanguageText(title: 'تیلگو'),
        // SizedBox(width: 5),
        // LanguageText(title: 'مراٹھی'),
        // SizedBox(width: 5),
        // LanguageText(title: 'تمل'),
        // SizedBox(width: 5),
        // LanguageText(title: 'گجراتی'),
        // SizedBox(width: 5),
        // LanguageText(title: 'کناڑا'),
        // SizedBox(width: 5),
        // LanguageText(title: 'مالایالم'),
        // SizedBox(width: 5),
        // LanguageText(title: 'پنجابی'),
      ],
    );
  }
}

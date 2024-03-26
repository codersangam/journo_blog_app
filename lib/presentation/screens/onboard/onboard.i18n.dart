part of 'onboard_imports.dart';

extension Localization on String {
  static final _t = Translations.byText('en_us') +
      {
        'en_us': 'Get Started',
        'ne_np': 'सुरु गर',
        'hi_in': 'शुरू हो जाओ',
        'ar_ae': 'البدء',
      };

  String get i18n => localize(this, _t);
}

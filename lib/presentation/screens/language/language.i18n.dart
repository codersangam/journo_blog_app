part of 'language_imports.dart';

extension Localization on String {
  static final _t = Translations.byText('en_us') +
      {
        'en_us': 'Language',
        'ne_np': 'भाषा',
        'hi_in': 'भाषा',
        'ar_ae': 'لغة',
      };

  String get i18n => localize(this, _t);
}

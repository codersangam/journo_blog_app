part of 'language_imports.dart';

@RoutePage()
class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'.i18n),
      ),
      body: ListView.builder(
        itemCount: LanguageModel.languages.length,
        itemBuilder: (context, index) {
          var langData = LanguageModel.languages[index];
          return ListTile(
            leading: Text(langData.title),
            trailing: Switch.adaptive(
              value: langData.locale == I18n.locale,
              onChanged: (value) {
                Utils.saveLocale(langData.locale);
                I18n.of(context).locale = langData.locale;
                context
                    .read<LanguageBloc>()
                    .add(ChooseLanguageEvent(langData.locale));
              },
            ),
          );
        },
      ),
    );
  }
}

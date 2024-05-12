part of 'language_bloc.dart';

sealed class LanguageState extends Equatable {
  const LanguageState(this.locale);

  final Locale locale;

  @override
  List<Object> get props => [];
}

final class LanguageInitialState extends LanguageState {
  const LanguageInitialState(super.locale);
  @override
  List<Object> get props => [locale];
}

final class LanguageUpdateState extends LanguageState {
  const LanguageUpdateState(super.locale);
  @override
  List<Object> get props => [locale];
}

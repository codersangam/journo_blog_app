part of 'language_bloc.dart';

sealed class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class ChooseLanguageEvent extends Equatable {
  const ChooseLanguageEvent(this.locale);

  final Locale locale;

  @override
  List<Object> get props => [locale];
}

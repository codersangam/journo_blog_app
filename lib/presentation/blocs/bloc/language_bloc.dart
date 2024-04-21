import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<ChooseLanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitialState(I18n.locale)) {
    on<ChooseLanguageEvent>((event, emit) {
      emit(LanguageUpdateState(event.locale));
    });
  }
}

import 'package:chatapp/Domain/Constants/cubits/themestates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState>{
  ThemeCubit():super(LightThemeStates());

  void toggletheme(){
    if(state is LightThemeStates){
      emit(DarkThemeStates());
    }
    else{
      emit(LightThemeStates());
    }
  }
}

import 'package:chatapp/Domain/Constants/appthemes.dart';
import 'package:chatapp/Domain/Constants/cubits/themecubits.dart';
import 'package:chatapp/Domain/Constants/cubits/themestates.dart';
import 'package:chatapp/Repository/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( BlocProvider(
      create: (_)=>ThemeCubit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,ThemeState>(
      builder: (context,state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: state is LightThemeStates ? AppThemes.lightTheme: AppThemes.darkTheme,
          home: OnBoardingScreen(),
        );
      },
    );

  }
}



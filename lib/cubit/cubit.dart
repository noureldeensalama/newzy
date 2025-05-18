// ignore_for_file: avoid_print

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Network/Local/cache_helper.dart';
import 'package:news_app/Network/Remote/dio_helper.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/layout/business/buisness_screen.dart';
import 'package:news_app/layout/science/science_screen.dart';
import 'package:news_app/layout/settings/settings_screen.dart';
import 'package:news_app/layout/sports/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        FluentIcons.building_20_filled,
      ),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
          FluentIcons.sport_soccer_20_filled
      ),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        FluentIcons.beaker_20_filled
      ),
      label: 'Science',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        FluentIcons.settings_20_filled
      ),
      label: 'Settings',
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  bool isDark = false;
  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(AppChangeModeState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'IsDark', value: isDark).then((value) {
        emit(AppChangeModeState());
      });
    }
  }

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (index == 1) {
      getSports();
    }
    if (index == 2) {
      getScience();
    }
    emit(NewsBottomNavBarState());
  }

  List<dynamic> business = [];
  void getBusiness() {
    emit(NewsBusinessLoadingState());

    if (business.isEmpty) {
      DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country': 'us',
            'category': 'business',
            'apiKey': 'c8d44b089108413f864b7a69fabd73fb',
          }
      ).then((value) {
        //print(value.data['articles'][0]['title']);
        business = value.data['articles'];
        print(business[0]['title']);

        emit(NewsGetBusinessSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetBusinessErrorState(error.toString()));
      });
    } else {
      emit(NewsGetBusinessSuccessState());
    }
  }
  List<dynamic> sports = [];

  void getSports() {
    emit(NewsSportsLoadingState());

    if (sports.isEmpty) {
      DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country': 'us',
            'category': 'sports',
            'apiKey': 'c8d44b089108413f864b7a69fabd73fb',
          }
      ).then((value) {
        //print(value.data['articles'][0]['title']);
        sports = value.data['articles'];
        print(sports[0]['title']);

        emit(NewsGetSportsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetSportsErrorState(error.toString()));
      });
    } else {
      emit(NewsGetSportsSuccessState());
    }
  }

  List<dynamic> science = [];

  void getScience() {
    emit(NewsScienceLoadingState());

    if (science.isEmpty) {
      DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country': 'us',
            'category': 'science',
            'apiKey': 'c8d44b089108413f864b7a69fabd73fb',
          }
      ).then((value) {
        //print(value.data['articles'][0]['title']);
        science = value.data['articles'];
        print(science[0]['title']);

        emit(NewsGetScienceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetScienceErrorState(error.toString()));
      });
    } else {
      emit(NewsGetScienceSuccessState());
    }
  }

  List<dynamic> search = [];

  void getSearch(String value) {
    emit(NewsSearchLoadingState());

    DioHelper.getData(
        url: 'v2/everything',
        query: {
          'q': '$value',
          'apiKey': 'c8d44b089108413f864b7a69fabd73fb',
        }
    ).then((value) {
      //print(value.data['articles'][0]['title']);
      search = value.data['articles'];
      print(search[0]['title']);

      emit(NewsGetSearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetSearchErrorState(error.toString()));
    });

  }
}
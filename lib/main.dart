import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/Network/Local/cache_helper.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/search/search_screen.dart';
import 'package:news_app/shared/colors_and_themes/themes.dart';
import 'shared/components.dart';
import 'Network/Remote/dio_helper.dart';



void main() async{
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp((isDark ?? false)));
}


class MyApp extends StatelessWidget {

  final bool isDark;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => NewsCubit()
            ..getBusiness()
            ..getSports()
            ..getScience()
            ..changeAppMode(fromShared: isDark),  // Add the changeAppMode here
        ),
      ],
      child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context, states){},
          builder: (context, states)
          {
            return MaterialApp(
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: NewsCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
              home: Directionality(
                  textDirection: TextDirection.ltr,
                  child: NewsLayout()
              ),
            );
          },
        ),
      );
  }
}

class NewsLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context,state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Newzy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    FluentIcons.search_24_filled
                    // Icons.search,
                  ),
                  onPressed: (){
                    navigateTo(context, SearchScreen(),);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.brightness_4_outlined,
                  ),
                  onPressed: (){
                    NewsCubit.get(context).changeAppMode();
                  },
                ),
              ],
              centerTitle: true,
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },
      );
  }
}

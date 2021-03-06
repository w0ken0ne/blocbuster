import 'package:blocbuster/common/screenutil/screen_util.dart';
import 'package:blocbuster/presentation/themes/app_colors.dart';
import 'package:blocbuster/presentation/themes/theme_text.dart';
import 'package:flutter/material.dart';

import 'journeys/home_screen.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxConstraints constraints = const BoxConstraints(
      maxHeight: 896,
      maxWidth: 414,
    );
    ScreenUtil.init(constraints);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Movie App",
        theme: ThemeData(
          primaryColor: AppColor.vulcan,
          scaffoldBackgroundColor: AppColor.vulcan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeText.getTextTheme(),
          appBarTheme: const AppBarTheme(elevation: 0),
        ),
        home: HomeScreen());
  }
}

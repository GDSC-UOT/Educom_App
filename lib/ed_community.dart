import 'package:ed_community/core/routing/router.dart';
import 'package:ed_community/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EdCommunity extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  EdCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          theme: ThemeData(
            fontFamily: "SF-Pro",
          ),
          title: "The Bored App",
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.login,
          debugShowCheckedModeBanner: false,
        ));
  }
}

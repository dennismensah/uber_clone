import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:uber_clone/application/auth/auth_bloc.dart';
import 'package:uber_clone/application/theme/theme_bloc.dart';
import 'package:uber_clone/injection.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart' as app_router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeBloc>(),
        ),
      ],
      child: LayoutBuilder(builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizerUtil().init(constraints, orientation);
          return BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
            debugPrint(state == ThemeData.dark() ? 'dark' : 'light');
            return MaterialApp(
              title: 'Uber',
              debugShowCheckedModeBanner: false,
              builder: ExtendedNavigator.builder(
                router: app_router.Router(),
              ),
              theme: ThemeData(
                buttonTheme: ButtonThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17.0,
                    vertical: 17.0,
                  ),
                ),
                // textTheme: TextTheme(button: TextStyle(fontSize: 8.0.sp)),
              ),
            );
          });
        });
      }),
    );
  }
}

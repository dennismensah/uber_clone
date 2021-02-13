import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uber_clone/injection.dart';
import 'package:uber_clone/presentation/core/app_widget.dart';

import 'application/core/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  Bloc.observer = AppBlocObserver();
  runApp(AppWidget());
}

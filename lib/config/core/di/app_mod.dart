import 'package:injectable/injectable.dart';
import 'package:markett/config/core/route/r_route.gr.dart';

import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  AppRouter get router => AppRouter();
}

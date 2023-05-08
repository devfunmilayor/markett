import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

final GetIt si = GetIt.I;

@injectableInit
Future<void> marketTestDependcies(String env) async =>
    await $initGetIt(si, environment: env);

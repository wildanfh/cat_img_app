import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:myget_it/data/repositories/cat_repository.dart';
import 'package:myget_it/presentation/notifier/cat_notifier.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton<CatNotifier>(() => CatNotifier(locator()));

  locator.registerLazySingleton<CatRepository>(() => CatRepository(locator()));

  locator.registerLazySingleton<Client>(() => Client());
}
import 'package:friendlinus/firebase_repo/auth_repo.dart';
import 'package:friendlinus/services/authentication_service.dart';
import 'package:friendlinus/view_controller/user_controller.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServices() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerSingleton<UserController>(UserController());
}

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_gk/cores/services/logger.dart';
import 'package:uuid/uuid.dart';
import 'dependency.config.dart';
GetIt instance = GetIt.instance;
@InjectableInit(
  asExtension: false,
  initializerName: "\$Init",
  preferRelativeImports: true
)
Future<void> initDependency() => $Init(instance);

@module
abstract class CommonModule {
  @preResolve
  Future<Box<Map<dynamic, dynamic>>> get localStorage async {
    await Hive.openBox<Map<dynamic, dynamic>>("todos");
    return Hive.box<Map<dynamic, dynamic>>("todos");
  }

  Uuid get uuid => const Uuid();
  Logger get logger => CmdLogger();
}

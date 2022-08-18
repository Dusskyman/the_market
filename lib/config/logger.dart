import 'package:logging/logging.dart';

void initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print(':::> ${rec.loggerName} ${rec.level.name}: ${rec.message} '
        '${rec.stackTrace?.toString() ?? ''}');
  });
}

import 'package:logger/logger.dart';

class LoggerSingleton {
  static Logger instance = Logger(
    level: Level.verbose,
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      lineLength: 120
    )
  );
}
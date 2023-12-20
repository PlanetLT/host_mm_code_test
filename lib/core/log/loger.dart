library logger;

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger(printer: PrettyPrinter(methodCount: 0));

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    final lines = event.lines;
    final splitByComma = lines.map((line) => line.split(", ").join(", \n"));
    // ignore: avoid_function_literals_in_foreach_calls
    splitByComma.forEach((line) => debugPrint(line));
  }
}
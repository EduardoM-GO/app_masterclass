import 'dart:convert';

import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/dev.dart';
import 'package:flutter/services.dart' show rootBundle;

class GetDevInfo {
  Future<Dev> call() async {
    final file = await rootBundle.loadString('assets/json/dev.json');
    final Map json = jsonDecode(file);
    return Dev.fromMap(json as Map<String, dynamic>);
  }
}

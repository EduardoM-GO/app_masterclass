import 'dart:convert';

import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:flutter/services.dart' show rootBundle;

class GetAtividade {
  Future<List<Atividade>> call() async {
    final file = await rootBundle.loadString('assets/json/atividades.json');

    final List json = jsonDecode(file);
    return json.map((e) => Atividade.fromMap(e)).toList();
  }
}

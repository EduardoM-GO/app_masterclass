import 'package:app_masterclass/modules/exercicios/pages/design_patterns/formatters/cpf_formatters.dart';
import 'package:app_masterclass/modules/exercicios/pages/design_patterns/validator/cpf_validator.dart';
import 'package:app_masterclass/modules/widgets/app_bar_custom.dart';
import 'package:app_masterclass/modules/widgets/scaffold_custom.dart';
import 'package:flutter/material.dart';

class ValidadorCpfPage extends StatelessWidget {
  const ValidadorCpfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom(
      appBar: const AppBarCustom(
          titulo: 'Validação de CPF', ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('CPF'),
              hintText: '999.999.999-99'),
          validator: CpfValidator(),
          inputFormatters: [CpfMask().caracterPermitido(), CpfMask()],
        ),
      ),
    );
  }
}

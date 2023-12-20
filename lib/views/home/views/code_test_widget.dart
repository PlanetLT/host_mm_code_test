
import 'package:code_test/data/model/code_test_model.dart';
import 'package:flutter/material.dart';

class CodeTestWidget extends StatelessWidget {
  final CodeTestModel codeTestModel;
  const CodeTestWidget(this.codeTestModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(11)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Text(codeTestModel.name.official)
                );
  }
}
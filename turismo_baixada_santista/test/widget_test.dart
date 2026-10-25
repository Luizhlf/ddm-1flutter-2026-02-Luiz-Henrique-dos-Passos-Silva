import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:turismo_baixada_santista/principal.dart';

void main() {
  testWidgets('Teste da tela inicial', (WidgetTester tester) async {
    await tester.pumpWidget(const Principal());

    expect(find.text('Luiz Henrique'), findsOneWidget);
  });
}
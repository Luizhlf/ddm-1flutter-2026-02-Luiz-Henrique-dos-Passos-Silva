
import 'package:flutter_test/flutter_test.dart';
import 'package:turismo_baixada_santista/principal.dart';

void main() {
  testWidgets('Teste da tela de turismo', (WidgetTester tester) async {
    await tester.pumpWidget(const Principal());

    expect(find.text('Luiz Henrique dos Passos Silva'), findsOneWidget);
    expect(find.text('Jardim da Orla'), findsOneWidget);
  });
}

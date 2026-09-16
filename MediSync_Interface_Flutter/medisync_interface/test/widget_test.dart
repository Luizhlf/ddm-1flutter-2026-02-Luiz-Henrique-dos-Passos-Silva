import 'package:flutter_test/flutter_test.dart';
import 'package:medisync_interface/main.dart';

void main() {
  testWidgets('Exibe os principais elementos da interface', (tester) async {
    await tester.pumpWidget(const Principal());

    expect(find.text('MediSync'), findsOneWidget);
    expect(find.text('Olá, Luiz!'), findsOneWidget);
    expect(find.text('Agendar consulta'), findsOneWidget);
  });
}

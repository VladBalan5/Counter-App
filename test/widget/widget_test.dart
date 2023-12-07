import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:counter_app/main.dart';

void main() {
  testWidgets('Incrementare si decrementare contoar', (WidgetTester tester) async {
    // Verificarea aplicatiei.
    await tester.pumpWidget(const MyApp());

    // Verifica daca contorul incepe de la 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Apasa iconita '+' si declanseaza o actiune.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica daca contoarul a fost incrementat.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // Apasa iconita '+' si declanseaza o actiune.
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    // Verifica daca contoarul a fost decrementat.
    expect(find.text('1'), findsNothing);
    expect(find.text('0'), findsOneWidget);
  });
}

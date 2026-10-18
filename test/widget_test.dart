import 'package:flutter_test/flutter_test.dart';
import 'package:spendwise/main.dart';

void main() {
  testWidgets('SpendWise app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const SpendWiseApp());

    expect(find.byType(SpendWiseApp), findsOneWidget);
  });
}
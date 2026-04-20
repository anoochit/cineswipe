import 'package:flutter_test/flutter_test.dart';
import 'package:cineswipe/main.dart';

void main() {
  testWidgets('Login screen loads', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CineSwipeApp());

    // Verify that the login screen title is present.
    expect(find.text('WELCOME BACK'), findsOneWidget);
    expect(find.text('USERNAME'), findsOneWidget);
    expect(find.text('PASSWORD'), findsOneWidget);
  });
}

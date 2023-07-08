import 'package:ankigpt/src/pages/widgets/footer2.dart';
import 'package:ankigpt/src/pages/widgets/theme.dart';
import 'package:ankigpt/src/providers/version_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../utils/test_link_util.dart';

void main() {
  group(Footer2, () {
    Future<void> pumpFooter(
      WidgetTester tester, {
      String version = '1.0.0',
    }) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            versionProvider.overrideWith((ref) => version),
          ],
          child: MaterialApp(
            theme: ankigptTheme,
            home: const Scaffold(
              body: Column(
                children: [
                  Footer2(),
                ],
              ),
            ),
          ),
        ),
      );
    }

    group('Product', () {
      testWidgets('opens GitHub, when clicks on "Source Code"', (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Source Code'),
          uri: 'https://github.com/nilsreichardt/ankigpt',
        );
      });

      testWidgets('opens support link, when clicks on "Feedback"',
          (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Feedback'),
          uri: 'https://ankigpt.help/support',
        );
      });
    });

    group('Contact', () {
      testWidgets('opens support link, when clicks on "WhatsApp"',
          (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('WhatsApp'),
          uri: 'https://ankigpt.help/support',
        );
      });

      testWidgets('opens email, when clicks on "Email"', (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Email'),
          uri: 'mailto:support@ankigpt.help',
        );
      });
    });

    group('Legal', () {
      testWidgets('opens terms of service, when clicks on "Terms of Service"',
          (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Terms of Service'),
          uri: 'https://ankigpt.help/terms-of-service',
        );
      });

      testWidgets('opens privacy policy, when clicks on "Privacy Policy"',
          (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Privacy Policy'),
          uri: 'https://ankigpt.help/privacy-policy',
        );
      });

      testWidgets('opens imprint, when clicks on "Imprint"', (tester) async {
        await testLink(
          tester: tester,
          pumpWidget: pumpFooter,
          find: find.text('Imprint'),
          uri: 'https://ankigpt.help/imprint',
        );
      });
    });

    testGoldens('renders as expected', (tester) async {
      await pumpFooter(tester);

      await screenMatchesGolden(tester, 'footer');
    });
  });
}

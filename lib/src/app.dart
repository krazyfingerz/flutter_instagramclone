import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants.dart';
import 'pages/layouts/mobilelayout.dart';
import 'pages/layouts/weblayout.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > webScreenSize) {
              return const MobileLayout();
            }
            return WebLayout();
          }
        ),
      ),
      // onGenerateRoute: (RouteSettings routeSettings) {
      //   return MaterialPageRoute<void>(
      //     settings: routeSettings,
      //     builder: (BuildContext context) {
      //       switch (routeSettings.name) {
      //         case SettingsView.routeName:
      //           return SettingsView(controller: settingsController);
      //         case SampleItemDetailsView.routeName:
      //           return const SampleItemDetailsView();
      //         case SampleItemListView.routeName:
      //         default:
      //           return const SampleItemListView();
      //       }
      //     },
      //   );
      // },
    );
  }
}

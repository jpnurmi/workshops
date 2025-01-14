import 'package:command_store/command_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import 'tabs/tab_page.dart';

class Workshops extends StatelessWidget {
  const Workshops({super.key});

  @override
  Widget build(BuildContext context) {
    return CommandStore(
      shortcuts: context.watch<ShortcutStore>(),
      child: YaruTheme(builder: (context, yaru, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: yaru.theme,
          darkTheme: yaru.darkTheme,
          highContrastTheme: yaruHighContrastLight,
          highContrastDarkTheme: yaruHighContrastDark,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          home: const TabPage(),
        );
      }),
    );
  }
}

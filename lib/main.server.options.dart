// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:smartbasket_web/components/header.dart' as _header;
import 'package:smartbasket_web/constants/theme.dart' as _theme;
import 'package:smartbasket_web/pages/about.dart' as _about;
import 'package:smartbasket_web/pages/home.dart' as _home;
import 'package:smartbasket_web/pages/privacy_policy.dart' as _privacy_policy;
import 'package:smartbasket_web/pages/terms_conditions.dart'
    as _terms_conditions;
import 'package:smartbasket_web/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {_about.About: ClientTarget<_about.About>('about')},
  styles: () => [
    ..._theme.styles,
    ..._app.App.styles,
    ..._header.Header.styles,
    ..._about.About.styles,
    ..._home.Home.styles,
    ..._privacy_policy.PrivacyPolicy.styles,
    ..._terms_conditions.TermsConditions.styles,
  ],
);

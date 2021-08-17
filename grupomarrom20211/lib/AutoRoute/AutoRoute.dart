import 'package:auto_route/auto_route.dart';
import 'package:grupomarrom20211/countries.dart';
import 'package:grupomarrom20211/landing.dart';
import 'package:grupomarrom20211/credits.dart';
import 'package:grupomarrom20211/countryDetail.dart';
import 'package:grupomarrom20211/play.dart';
import 'package:grupomarrom20211/privateroom.dart';
import 'package:grupomarrom20211/inGame.dart';

//Responsável por gerar as rotas das páginas.
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Landing, initial: true),
    AutoRoute(page: Credits),
    AutoRoute(page: Countries),
    AutoRoute(path: '/CountryDetail/:id', page: CountryDetail),
    AutoRoute(page: Play),
    AutoRoute(path: '/inGame/:id/:token', page: inGame),
    AutoRoute(path: '/PrivateRoom/:player/:id/:token', page: PrivateRoom)
  ],
)
class $AppRouter {}

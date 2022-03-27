import 'package:dictionary/bloc/auth_bloc.dart';
import 'package:dictionary/bloc/card_collection_bloc.dart';
import 'package:dictionary/bloc/dictionary_collection_bloc.dart';
import 'package:dictionary/pages/card_collection_page.dart';
import 'package:dictionary/pages/dictionary_list_page.dart';
import 'package:dictionary/repository/card_collection_repository.dart';
import 'package:dictionary/repository/dictionary_collection_repository.dart';
import 'package:dictionary/services/sql_lite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './repository/authentication_repository.dart';

import './bloc/observer_bloc.dart';

import 'pages/logo_page.dart';
import './pages/login_page.dart';

void main() {
  BlocOverrides.runZoned(
    () => {runApp(const MyApp())},
    blocObserver: DictionaryBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localSql = SQLLiteService();
    var prefs = SharedPreferences.getInstance();
    var authenticationRepository = AuthenticationRepository(prefs);

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBLoC>(
          create: (BuildContext context) => AuthBLoC(
            authenticationRepository: authenticationRepository,
          ),
        ),
        BlocProvider<DictionaryCollectionBLoC>(
          create: (BuildContext context) => DictionaryCollectionBLoC(
            repository: DictionaryCollectionRepository(
                authRepository: authenticationRepository),
          ),
        ),
        BlocProvider<CardCollectionBLoC>(
          create: (BuildContext context) => CardCollectionBLoC(
            repository: CardCollectionRepository(
                authRepository: authenticationRepository, localSql: localSql),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Dictionary',
        routes: {
          '/': (context) {
            return BlocBuilder<AuthBLoC, AuthState>(builder: (context, state) {
              return _buildHomePage(context, state);
            });
          },
          LogoPage.routeName: (context) => const LogoPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          DictionaryListPage.routeName: (context) => const DictionaryListPage(),
          CardCollectionPage.routeName: (context) => const CardCollectionPage(),
        },
      ),
    );
  }

  Widget _buildHomePage(context, state) {
    if (state.isLogin) {
      return const DictionaryListPage();
    } else {
      return const LoginPage();
    }
  }
}

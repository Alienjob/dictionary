import 'package:dictionary/dependency_injection.dart';
import 'package:dictionary/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dictionary/bloc/card_collection_bloc.dart';
import 'package:dictionary/features/dictionary/presentation/bloc/dictionary_collection_bloc.dart';
import 'package:dictionary/pages/card_collection_page.dart';
import 'package:dictionary/features/dictionary/presentation/pages/dictionary_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/observer_bloc.dart';

import 'pages/logo_page.dart';
import 'features/auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  BlocOverrides.runZoned(
    () => {runApp(const MyApp())},
    blocObserver: DictionaryBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBLoC>(create: (BuildContext context) => sl()),
        BlocProvider<DictionaryCollectionBLoC>(
            create: (BuildContext context) => sl()),
        BlocProvider<CardCollectionBLoC>(
            create: (BuildContext context) => sl()),
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

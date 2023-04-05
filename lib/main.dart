import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ready_to_use_widgets/atomic/auth_textfield/auth_textfield_show.dart';

import 'feature/network_connection/cubit/network_cubit.dart';

void main() => runApp(const AppBlocProvider());

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<NetworkCubit>(
        //Uygulamanın herhangi bir yerinde bloc vasıtasıyla internet kontrol edilip işlem yapılabilir.
        // Network status can be checked anywhere in the app
        lazy: false,
        create: (context) => NetworkCubit(
          connectionChecker:
              InternetConnectionChecker(), //Internet durumunu burada tüm uygulama kullanımı için servis ediyoruz. Kullandığımız paket ayarları gerekli görülürse değiştirilebilir.
        ), //Network status monitored and serviced to app
      ),
    ], child: const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() async {
    for (var x = 0; x < 10; x++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _counter++;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: AuthTextFieldShow());
  }
}

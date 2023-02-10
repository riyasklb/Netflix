import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/application/downloads/downloads_bloc.dart';
import 'package:project2/application/search/search_bloc.dart';
import 'package:project2/domain/di/injectable.dart';
import 'package:project2/presentataion/mainpage/widgets/screenmain_page.dart';

import 'core/colors/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (cxt) => getit<DownloadsBloc>()),
        BlocProvider(create: (cxt) => getit<SearchBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: backgroundcolor,
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
        ),
        home: screenmainpage(),
      ),
    );
  }
}

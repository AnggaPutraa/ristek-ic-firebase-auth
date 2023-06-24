import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ic_firebase/services/di.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(const App());
}


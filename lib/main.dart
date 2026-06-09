






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UnSplash/core/di/injection.dart';
import 'UnSplash/show_new_image/presentation/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(App ());
}
class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:PhotosApp () ,);
  }

}



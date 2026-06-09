import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_magement/UnSplash/core/di/injection.dart';
import 'package:state_magement/UnSplash/show_new_image/presentation/pages/show_photo.dart';

import '../manager/photos_bloc.dart';


class PhotosApp extends StatelessWidget {
  const PhotosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  getIt<PhotosBloc>(),
      child: MaterialApp(
        home: ShowPhoto(),

      ),
    );
  }
}

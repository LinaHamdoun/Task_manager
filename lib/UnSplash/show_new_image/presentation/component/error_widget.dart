


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/photos_bloc.dart';

class ErrorWidgetBuild extends StatelessWidget
{
 final  String? message ;
const   ErrorWidgetBuild(this.message, {super.key});
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.cloud_off, size: 70, color: Colors.grey),
          const SizedBox(height: 16),
          Text(message ?? 'Error'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<PhotosBloc>().add(GetPhotosEvent()),
            child: const Text('Retry again !'),
          ),
        ],
      ),
    );
  }

}
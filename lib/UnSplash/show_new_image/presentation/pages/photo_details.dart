import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/entities_photo.dart';

class PhotoDetailsScreen extends StatelessWidget {
  final PhotoEntities photo;

  const PhotoDetailsScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              minScale: 0.5,

              maxScale: 4.0,
              child: Hero(
                tag: photo.idPhoto ?? '',
                child: CachedNetworkImage(
                  imageUrl: photo.urls?.regular ?? '',
                  fit: BoxFit.contain,
                  placeholder: (context, url) =>
                  Center(child: const CircularProgressIndicator()),

                  errorWidget: (context , url , error ){
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.signal_wifi_off, color: Colors.grey),
                    );
                  },

                  filterQuality:FilterQuality.low ,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  photo.user?.name ?? 'Unknown Artist',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                  ),
                ),
                const SizedBox(height: 5),
                if (photo.alt_description != null)
                  Text(
                    photo.alt_description!,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

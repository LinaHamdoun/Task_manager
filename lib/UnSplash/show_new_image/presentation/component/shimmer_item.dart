import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PhotoShimmerItem extends StatelessWidget {
  const PhotoShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}
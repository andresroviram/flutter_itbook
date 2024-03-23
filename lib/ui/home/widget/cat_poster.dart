import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CatPoster extends StatelessWidget {
  const CatPoster({
    super.key,
    this.imagePath,
    this.fit,
    this.infinity,
    this.width,
    this.height,
  });

  final String? imagePath;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final double? infinity;

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return CachedNetworkImage(
        fit: fit ?? BoxFit.fitWidth,
        width: infinity ?? double.infinity,
        height: height,
        imageUrl: imagePath!,
        placeholder: (_, __) => Shimmer.fromColors(
          baseColor: Colors.black26,
          highlightColor: Colors.black12,
          child: Container(
            width: width ?? 130,
            height: height ?? 170,
            color: Colors.black,
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error),
        ),
      );
    }
    return const Placeholder(
      color: Colors.black87,
    );
  }
}

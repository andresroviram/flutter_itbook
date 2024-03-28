import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookPoster extends StatelessWidget {
  const BookPoster({
    super.key,
    this.imagePath,
    this.fit,
    this.width,
    this.height,
  });

  final String? imagePath;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return CachedNetworkImage(
        fit: fit ?? BoxFit.fitWidth,
        width: width ?? double.infinity,
        height: height,
        imageUrl: imagePath!,
        placeholder: (context, __) => Shimmer.fromColors(
          baseColor: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
          highlightColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          child: Container(
            width: width ?? double.infinity,
            height: height,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
          ),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error),
        ),
      );
    }
    return Placeholder(
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}

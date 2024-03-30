import 'package:flutter/material.dart';
import 'package:inlaze/core/utils/extension/extension.dart';
import 'package:shimmer/shimmer.dart';

class ContainerShimmer extends StatelessWidget {
  const ContainerShimmer({super.key, this.height, this.width});
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Center(
      child: Shimmer.fromColors(
        baseColor: colorScheme.secondary.withOpacity(0.4),
        highlightColor: colorScheme.secondary.withOpacity(0.6),
        child: Container(
          width: width ?? double.infinity,
          height: height,
          color: colorScheme.secondary.withOpacity(0.4),
        ),
      ),
    );
  }
}

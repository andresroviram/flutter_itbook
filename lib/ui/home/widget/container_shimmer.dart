import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ContainerShimmer extends StatelessWidget {
  const ContainerShimmer({super.key, this.height, this.width});
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
        highlightColor:
            Theme.of(context).colorScheme.secondary.withOpacity(0.6),
        child: Container(
          width: width ?? double.infinity,
          height: height,
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
        ),
      ),
    );
  }
}

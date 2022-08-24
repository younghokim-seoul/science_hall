import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:science_hall/presentation/widget/loading_indicator.dart';
import 'package:science_hall/util/dev_log.dart';

class CachedImageCard extends StatelessWidget {
  const CachedImageCard({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    Log.i("::::imageUrl " + imageUrl);
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => const LoadingIndicator(),
      errorWidget: (context, url, error) {
        Log.d("::::error " + error);
        return Icon(Icons.error);
      },
      fit: BoxFit.cover,
      width: width,
      height: height,
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/app/widgets/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class ProfileImage extends StatelessWidget {
  final String image;
  final double radius;

  const ProfileImage({
    Key? key,
    required this.image,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 2,
        color: Theme.of(context).cardColor,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 2.0 * radius,
            minHeight: 2.0 * radius,
            maxWidth: 2.0 * radius,
            maxHeight: 2.0 * radius,
          ),
          child: image != ''
              ? Hero(
                  tag: "profilePic",
                  child: CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (_, __, ___) =>
                        const Icon(IconlyLight.infoSquare),
                  ),
                )
              : Hero(
                  tag: "profilePicIcon",
                  child: FittedBox(
                    child: PaddingWrapper(
                      isSliverItem: false,
                      child: Icon(
                        IconlyLight.profile,
                        color: Theme.of(context).iconTheme.color,
                        size: Get.width * 0.12,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class ScheduledMagazineCard extends GetResponsiveView {
  String image, title, userId, websiteurl;

  ScheduledMagazineCard({
    required this.image,
    required this.title,
    required this.userId,
    required this.websiteurl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screen.context = context;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        // width: 100,
        height: 300,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  width: 125,
                  child: CachedNetworkImage(
                    imageUrl: image,
                    //  controller.allPublishedMagazine[index].thumbnail.toString(),
                    progressIndicatorBuilder: (context, url, progress) =>
                        Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  title == null.toString() ? "No Title available" : title,
                  // controller.allPublishedMagazine[index].title.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  userId == null.toString() ? 'No data' : userId,
                  // controller.allPublishedMagazine[index].usersID.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  websiteurl.toString().substring(0, 10),
                  // controller.allPublishedMagazine[index].website_url.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  // style: ElevatedButton.styleFrom(
                  //   primary: Color(0xFFFFB946),
                  // ),
                  onPressed: () {
                    Get.defaultDialog(
                      contentPadding: const EdgeInsets.all(16),
                      title: title,
                      content: Column(
                        children: [
                          Text(
                            'Scheduled Date:   ${DateTime.now().toString().substring(0, 10)}',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Expired Date:         ${DateTime.now().toString().substring(0, 10)}',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              'Are you sure you want to Publish this magazine?'),
                        ],
                      ),
                      actions: [
                        MaterialButton(onPressed: () {}, child: Text('Cancel')),
                        ElevatedButton(onPressed: () {}, child: Text('Publish'))
                      ],
                    );
                  },
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  height: 42,
                  minWidth: 201,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        IconlyLight.upload,
                        size: 16,
                        color: AppColors.white,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Publish Now",
                        textScaleFactor: Get.textScaleFactor,
                        style:
                            DefaultTextStyle.of(screen.context).style.copyWith(
                                  fontSize: Theme.of(screen.context)
                                      .textTheme
                                      .button
                                      ?.fontSize,
                                  color: AppColors.white,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

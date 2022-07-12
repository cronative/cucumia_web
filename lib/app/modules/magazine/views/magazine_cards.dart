import 'package:cached_network_image/cached_network_image.dart';
import 'package:cucumia_admin/models/Magazines.dart';
import 'package:flutter/material.dart';

class MagazineCard extends StatelessWidget {
  // String image, title, userId, websiteurl;
  Magazines magaz;

  MagazineCard({
    // required this.image,
    // required this.title,
    // required this.userId,
    // required this.websiteurl,
    required this.magaz,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        // width: 100,
        height: 250,
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
                    imageUrl: magaz.thumbnail!,
                    //  controller.allPublishedMagazine[index].thumbnail.toString(),
                    progressIndicatorBuilder: (context, url, progress) => Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  magaz.title == null.toString() ? "No title Available" : magaz.title!,
                  // controller.allPublishedMagazine[index].title.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  magaz.usersID == null.toString() ? "No data" : magaz.usersID!,
                  // controller.allPublishedMagazine[index].usersID.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  magaz.website_url.toString().substring(0, 10),
                  // controller.allPublishedMagazine[index].website_url.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
                Text(
                  magaz.uploaded_on.toString().substring(0, 10),
                  // controller.allPublishedMagazine[index].website_url.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

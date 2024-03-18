import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterease_sliver_scroll/listview_items.dart';
import 'package:flutterease_sliver_scroll/utils.dart';

class ScrollItems extends StatefulWidget {
  const ScrollItems({super.key});

  @override
  State<ScrollItems> createState() => _ScrollItemsState();
}

class _ScrollItemsState extends State<ScrollItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...items.map(
          (e) => Column(
            children: [
              Container(
                width: context.widthPercent(90),
                height: context.heightPercent(28),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  color: Colors.blue,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      e.imageUrl,
                      fit: BoxFit.cover,
                    )),
              ),
              context.vert1,
              SizedBox(
                width: context.widthPercent(90),
                child: Text(
                  e.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              context.vert2,
            ],
          ),
        )
      ],
    );
  }
}

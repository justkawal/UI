import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mingle/models/artist_model.dart';
import 'package:mingle/widgets/feed_display_widget.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  State<FeedTab> createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 140),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Feed',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.black,
                    size: 23,
                  ),
                ],
              ),
              Icon(
                CupertinoIcons.search,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
          const SizedBox(height: 25),
          for (final model in ArtistModel.dummyData)
            FeedDisplayWidget(artist: model),
        ],
      ),
    );
  }
}

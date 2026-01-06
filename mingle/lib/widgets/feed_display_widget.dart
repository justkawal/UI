import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mingle/models/artist_model.dart';

class FeedDisplayWidget extends StatefulWidget {
  final ArtistModel artist;
  const FeedDisplayWidget({required this.artist, Key? key}) : super(key: key);

  @override
  _FeedDisplayWidgetState createState() => _FeedDisplayWidgetState();
}

class _FeedDisplayWidgetState extends State<FeedDisplayWidget> {
  final PageController _pageController = PageController(viewportFraction: 1);
  int _selectedImageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _selectedImageIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 480,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 390,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: widget.artist.assetList.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              widget.artist.assetList[index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        right: 15,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                setState(() {
                                  widget.artist.isLiked =
                                      !widget.artist.isLiked;
                                });
                              },
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  widget.artist.isLiked
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            Container(
                              width: 65,
                              height: 13,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      width: 13,
                                      decoration: BoxDecoration(
                                        color: _selectedImageIndex == i
                                            ? Colors.white
                                            : Colors.black.withOpacity(0.3),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                CupertinoIcons.arrowshape_turn_up_right,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 5, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '@${widget.artist.artistUID}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  ' ${widget.artist.commentsCount}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    setState(() {
                                      widget.artist.isBookmarked =
                                          !widget.artist.isBookmarked;
                                    });
                                  },
                                  child: Icon(
                                    widget.artist.isBookmarked
                                        ? CupertinoIcons.bookmark_fill
                                        : CupertinoIcons.bookmark,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text(
                              widget.artist.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

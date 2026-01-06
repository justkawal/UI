import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/widgets/frosted_widget.dart';

class TravelDestinationDetailsPage extends StatefulWidget {
  final String destinationName;
  const TravelDestinationDetailsPage(
      {required this.destinationName, super.key});

  @override
  State<TravelDestinationDetailsPage> createState() =>
      _TravelDestinationDetailsPageState();
}

class _TravelDestinationDetailsPageState
    extends State<TravelDestinationDetailsPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TravelColors.offWhite,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.only(top: 0, bottom: 150),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .72,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Hero(
                          tag: widget.destinationName,
                          child: Image.asset(
                            'assets/destination/${widget.destinationName}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(0.67),
                                Colors.black.withOpacity(0.0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 210,
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Lighthouse Cabo da Roca',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          height: 1.1,
                                          letterSpacing: -1),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                CupertinoIcons.star_fill,
                                                color: TravelColors.yellow,
                                                size: 24,
                                              ),
                                              const SizedBox(width: 6),
                                              Text(
                                                '4.5',
                                                style: TextStyle(
                                                  fontSize: 21,
                                                  color: Colors.white
                                                      .withOpacity(.8),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            '123 reviews',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Colors.white.withOpacity(.8),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                height: 40,
                                width: 170,
                                child: Stack(
                                  children: [
                                    for (int index = 0; index < 3; index++)
                                      Positioned(
                                        left: index * 28,
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(.3),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          padding: const EdgeInsets.all(2.5),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              'assets/profile/profile_${(index % 6) + 1}.jpeg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    Positioned(
                                      left: 3 * 28,
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: FrostedWidget(
                                          color: Colors.grey,
                                          child: Text(
                                            '+4',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ListViewHeader(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  color: TravelColors.offWhite,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DestinationStatsWidget(
                        title: 'Location',
                        value: 'Portugal',
                        iconData: CupertinoIcons.location_solid,
                      ),
                      DestinationStatsWidget(
                        title: 'Price',
                        value: '80\u20AC',
                        iconData: CupertinoIcons.money_euro_circle,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: TravelColors.offWhite,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Cabo da Roca or Cape Roca is a cape which forms the westernmost '
                    'point of the Sintra Mountain Range, of mainland Portugal, of '
                    'continental Europe, and of the Eurasian land mass. '
                    'It is situated in the municipality of Sintra, near Azóia, '
                    'in the southwest of the district of Lisbon, forming the westernmost '
                    'extent of the Serra de Sintra. The cape is in the westernmost point of '
                    'the European continent, located within the Sintra-Cascais '
                    'Natural Park, and is a popular tourist attraction that '
                    'marks the most westerly point of mainland Europe.',
                    maxLines: 11,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 25,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              behavior: HitTestBehavior.translucent,
              child: TweenAnimationBuilder(
                tween: Tween<double>(
                    begin: _scrollPosition >= 160 ? 1 : 0,
                    end: _scrollPosition >= 160 ? 0 : 1),
                duration: Duration(milliseconds: 500),
                curve:
                    _scrollPosition >= 160 ? Curves.easeOut : Curves.bounceOut,
                builder: (context, double value, child) {
                  return Container(
                    height: 65 * value,
                    width: 65 * value,
                    decoration: BoxDecoration(
                      color: TravelColors.darkGrey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 30 * value,
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    TravelColors.offWhite,
                    TravelColors.offWhite.withOpacity(0.67),
                    TravelColors.offWhite.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: Container(
              height: 68,
              decoration: BoxDecoration(
                color: TravelColors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                'Let\'s try!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationStatsWidget extends StatelessWidget {
  final String title;
  final String value;
  final IconData iconData;
  const DestinationStatsWidget({
    required this.title,
    required this.value,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: TravelColors.lightGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(iconData),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    color: TravelColors.lightBrown,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ListViewHeader extends StatefulWidget {
  const ListViewHeader({super.key});

  @override
  State<ListViewHeader> createState() => _ListViewHeaderState();
}

class _ListViewHeaderState extends State<ListViewHeader> {
  int _selectedIndex = 0;
  final List<String> _tabs = ['Overview', 'Reviews'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: TravelColors.offWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int i = 0; i < _tabs.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = i;
                          });
                        },
                        child: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _tabs[i],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: i == _selectedIndex
                                      ? TravelColors.orange
                                      : TravelColors.lightBrown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                height: i == _selectedIndex ? 9 : 0,
                                width: i == _selectedIndex ? 9 : 0,
                                decoration: BoxDecoration(
                                  color: i == _selectedIndex
                                      ? TravelColors.orange
                                      : TravelColors.lightBrown,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 5,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(90),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Icon(
                Icons.bookmark_rounded,
                color: TravelColors.orange,
                size: 35,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

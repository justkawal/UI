import 'package:action_slider/action_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tesla/pages/live_charging_page.dart';
import 'package:tesla/utils/tesla_colors.dart';
import 'package:tesla/widgets/extra_info_widget.dart';
import 'package:tesla/widgets/fade_on_scroll.dart';
import 'package:tesla/widgets/swipe_widget.dart';

class StationPage extends StatefulWidget {
  const StationPage({Key? key}) : super(key: key);

  @override
  State<StationPage> createState() => _StationPageState();
}

class _StationPageState extends State<StationPage> {
  static final ScrollController scrollController = ScrollController();
  final _controller = ActionSliderController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: TeslaColors.lightGreyColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.only(bottom: 310),
                children: [
                  SizedBox(
                    height: 425,
                    child: Stack(
                      children: [
                        stationImageWidget(),
                        fourDotsWidget(),
                        stationNameAndAddressWidget()
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  metaWidget(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'About Station',
                      style: TextStyle(
                        color: TeslaColors.darkGreenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, right: 10),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Just another Lorem Ipsum text.',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 25),
                    child: Text(
                      'Pricing',
                      style: TextStyle(
                        color: TeslaColors.darkGreenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          // Write something smart and eye catching related to developers
                          'Min usage fee',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$10.00',
                          style: TextStyle(
                            color: TeslaColors.darkGreenColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBarBackgroundFaderColorWidget(),
          appBarWidget(),
          SwipeWidget(
            controller: _controller,
            text: 'Swipe to Start Session',
            onTap: () {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                showMaterialModalBottomSheet<LiveChargingPage>(
                  context: context,
                  useRootNavigator: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  builder: (context) => LiveChargingPage(),
                );
              });
            },
          ),
        ],
      ),
    );
  }

  SizedBox metaWidget() {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Expanded(
                    child: ExtraInfoWidget(
                      iconData: CupertinoIcons.location,
                      color: TeslaColors.darkGreyColor,
                      text: '1.5mi | 7 mins',
                    ),
                  ),
                  Expanded(
                    child: ExtraInfoWidget(
                      iconData: Icons.ev_station_rounded,
                      color: Colors.green[700]!,
                      text: '4 ports avaiable',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ExtraInfoWidget(
                    iconData: CupertinoIcons.money_dollar_circle_fill,
                    color: Colors.grey[500]!,
                    text: 'Starts at \$11/kwh',
                  ),
                ),
                Expanded(
                  child: ExtraInfoWidget(
                    iconData: CupertinoIcons.star_fill,
                    color: TeslaColors.orangeColor,
                    text: 'Top Rated Station',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned appBarWidget() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 130,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 26,
              width: 26,
              padding: const EdgeInsets.only(right: 1),
              decoration: BoxDecoration(
                color: TeslaColors.darkGreyColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                CupertinoIcons.chevron_back,
                color: Colors.white,
                size: 16,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(55),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.star_fill,
                          color: TeslaColors.lightGreenColor, size: 17),
                      const SizedBox(width: 5),
                      Text(
                        '4.6',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(55),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    color: TeslaColors.redColor,
                    size: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned appBarBackgroundFaderColorWidget() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: FadeOnScroll(
        scrollController: scrollController,
        fullOpacityOffset: 170,
        child: Container(
          height: 130,
          color: TeslaColors.lightGreyColor,
        ),
      ),
    );
  }

  Positioned stationNameAndAddressWidget() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.grey,
                      width: .3,
                    ),
                  ),
                  child: Icon(
                    Icons.bolt_rounded,
                    color: TeslaColors.darkGreenColor,
                    size: 55,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Slate Darwin Dr.',
                      style: TextStyle(
                        color: TeslaColors.darkGreenColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Suite 45, 104 Hill Road',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue[900],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          CupertinoIcons.location,
                          color: Colors.blue[900],
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              CupertinoIcons.share,
              color: TeslaColors.darkGreenColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Positioned fourDotsWidget() {
    return Positioned(
      top: 294,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 47,
            height: 14,
            decoration: BoxDecoration(
              color: TeslaColors.darkGreyColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < 4; index++)
                  Container(
                    height: 8,
                    width: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 1.3),
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? TeslaColors.lightGreenColor
                          : Colors.white.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned stationImageWidget() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 300,
        color: TeslaColors.lightGreyColor.withOpacity(.5),
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.transparent],
            ).createShader(Rect.fromLTRB(230, 230, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/charging_station.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

import 'package:banking_store/home_page/tabs/wallet/chart.dart';
import 'package:banking_store/home_page/tabs/wallet/payment_model.dart';
import 'package:banking_store/notification_page/notification_page.dart';
import 'package:banking_store/utils/colors.dart';
import 'package:flutter/material.dart';

class WalletTab extends StatefulWidget {
  const WalletTab({Key? key}) : super(key: key);

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    final colors = [
      StoreColors.darkGreen,
      StoreColors.ligthPink,
      StoreColors.darkTeal
    ];
    final list = ['1D', '1M', '3M', '6M', '1Y', 'ALL'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            height: MediaQuery.of(context).size.height - 80,
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: StoreColors.darkGreen.withOpacity(.9),
                          size: 28,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const NotificationPage(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.settings_rounded,
                            color: StoreColors.darkGreen.withOpacity(.9),
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Investments',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Auto-investment',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text.rich(
                            TextSpan(
                              text: '\$',
                              style: TextStyle(
                                color: StoreColors.darkGreen,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '70,000',
                                  style: TextStyle(
                                    color: StoreColors.darkGreen,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Switch(
                              value: true,
                              onChanged: (value) {},
                              activeColor: StoreColors.darkGreen,
                              thumbColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                      (states) => Colors.white),
                              activeTrackColor: StoreColors.darkGreen,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: StoreColors.darkGreen,
                              trackOutlineWidth:
                                  MaterialStateProperty.resolveWith<double?>(
                                      (_) => 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            decoration:
                                BoxDecoration(color: StoreColors.darkBrown),
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                            child: Text(
                              '+\$5,000 / +21%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'past year',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    LineChartSample2(),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 53,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(7),
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            decoration: BoxDecoration(
                              color: index == selectedIndex
                                  ? StoreColors.darkGreen
                                  : StoreColors.lightGrey,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              list[index],
                              style: TextStyle(
                                color: index == selectedIndex
                                    ? Colors.white
                                    : Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Portfolio',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        children:
                            List.generate(PaymentModel.dummy().length, (index) {
                          final model = PaymentModel.dummy()[index];
                          return Container(
                            height: 80,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: colors[index % colors.length],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        model.name
                                            .substring(0, 1)
                                            .toLowerCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          model.name,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Text(
                                          model.authorization.value,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$ ${model.price.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      model.dateTime,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

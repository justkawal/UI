import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.only(left: 15, right: 10, top: 20, bottom: 20),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sales Admin',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: -.5,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  CupertinoIcons.chevron_down,
                  size: 16,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 250,
            margin: const EdgeInsets.symmetric(vertical: 1.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.grey, width: .4),
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.65),
              ),
              decoration: InputDecoration(
                hintText: 'Search anything in Siohioma...',
                hintStyle: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.withOpacity(.75),
                ),
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  size: 15,
                  color: Colors.black.withOpacity(.65),
                ),
                contentPadding: const EdgeInsets.only(left: 10, top: 3),
              ),
              cursorHeight: 13,
              cursorColor: Colors.black.withOpacity(.55),
            ),
          ),
          const SizedBox(width: 40),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.grey, width: .4),
            ),
            child: Icon(
              CupertinoIcons.archivebox,
              size: 13,
              color: Colors.black.withOpacity(.65),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.grey, width: .4),
            ),
            child: Icon(
              Icons.ac_unit,
              size: 13,
              color: Colors.black.withOpacity(.65),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 135,
            height: 70,
            margin: const EdgeInsets.symmetric(vertical: 1.2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Colors.grey, width: .4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add new product',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  CupertinoIcons.add_circled_solid,
                  size: 14,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

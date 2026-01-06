import 'package:flutter/material.dart';
import 'package:social_chats/models/dating_profile_model.dart';
import 'package:social_chats/pages/profile_scrolling_page.dart';

class ChatListingPage extends StatelessWidget {
  const ChatListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final candidates1 = DatingProfileModel.getCandidates();
    final assetPaths1 = DatingProfileModel.getAssetPaths();

    final candidates2 = DatingProfileModel.getCandidates();
    final assetPaths2 = DatingProfileModel.getAssetPaths();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(top: 60, bottom: 100),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Matches',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 25),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        final model = candidates1[index % candidates1.length];
                        return GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DatingProfile(
                                  candidates: candidates1,
                                  assetPaths: assetPaths1,
                                  initialIndex: index,
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 80,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: SizedBox(
                                      height: 80,
                                      width: 70,
                                      child: Image.asset(
                                        assetPaths1[index % assetPaths1.length],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 9),
                                  Text(
                                    model.name,
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    model.age.toString(),
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.only(left: 25, right: 10, top: 3),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                for (int i = 0; i < 35; i++) ...[
                  if (i != 0)
                    Divider(
                      color: Colors.grey[900],
                      thickness: 1.5,
                      indent: 25,
                      endIndent: 25,
                    ),
                  Container(
                    height: 60,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                assetPaths2[i % assetPaths2.length],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      candidates2[i % candidates2.length].name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}

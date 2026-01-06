import 'package:databest/models/profile_models.dart';
import 'package:databest/utilities/colors.dart';
import 'package:flutter/material.dart';

class ProfileTitleWidget extends StatelessWidget {
  final Profile profileModel;
  const ProfileTitleWidget({required this.profileModel, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: DatabestColors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    profileModel.assetPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 18),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileModel.name,
                    style: TextStyle(
                      color: DatabestColors.darkBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -.8,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    '${profileModel.position} | ${profileModel.workingType}',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            profileModel.openRate,
            style: TextStyle(
              color: DatabestColors.darkBlue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -.1,
            ),
          ),
        ],
      ),
    );
  }
}

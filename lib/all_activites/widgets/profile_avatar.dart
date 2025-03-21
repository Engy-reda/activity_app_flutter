import 'package:flutter/material.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({super.key});

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile44.png'),
        radius: 20.0,
      ),
    );
  }
}

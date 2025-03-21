import 'package:activity_app/all_activites/widgets/profile_avatar.dart';
import 'package:activity_app/all_activites/widgets/support_style.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ViewMembersLikesWidget extends StatelessWidget {
  final List<dynamic> likedUsers;
  const ViewMembersLikesWidget({super.key, required this.likedUsers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.red, // Splash color
                  onTap: () {},
                  child: SizedBox(
                      width: 27,
                      height: 27,
                      child: Icon(
                        MdiIcons.thumbUp,
                        color: Colors.white,
                        size: 20,
                      )),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              '1000',
              style: SupportStyle.simeBoldGrey(),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: likedUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const ProfileAvatar(),
            title: Text(likedUsers[index][0], style: SupportStyle.bold()),
          );
        },
      ),
    );
  }
}

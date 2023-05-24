import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Поездка",style: TextStyle(fontWeight: FontWeight.bold),),
      leading: GestureDetector(
        onTap: () { /* Write listener code here */ },
        child: Icon(
          Icons.arrow_back_ios_new,  // add custom icons also
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                  Icons.cloud_download_rounded
              ),
            )
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

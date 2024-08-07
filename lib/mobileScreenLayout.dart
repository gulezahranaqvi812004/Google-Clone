import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_ui_clone/utils/colors.dart';
import 'package:google_ui_clone/widgets/footer.dart';
import 'package:google_ui_clone/widgets/search.dart';
import 'package:google_ui_clone/widgets/signInButton.dart';
import 'package:google_ui_clone/widgets/translationButton.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IMAGES'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/more-apps.svg',
                color: primaryColor,
              ),
              onPressed: () {}),
          const SizedBox(width: 10),
          const SigninButton(),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children:  [
                    Search(),
                    // SizedBox(height: 10),
                    TranslationButtons(),
                  ],
                ),
                 MobileFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

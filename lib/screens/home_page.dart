import 'package:flutter/material.dart';
import 'package:music_ui_components/music_ui_components.dart';
import 'package:you_music/components/app_assets.dart';
import 'package:you_music/components/check_time.dart';
import 'package:you_music/components/display_icon.dart';
import 'package:you_music/components/screen_ratio.dart';
import 'package:you_music/screens/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _globalKey = GlobalKey();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: MusicPad.pad20Horizontal(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CheckTime.checkTime(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DisplayIcon(
                        icon: Icons.notifications_none,
                        color: MusicColors.musicPrimary,
                      ),
                      DisplayIcon(
                        icon: Icons.access_time_rounded,
                        color: MusicColors.musicPrimary,
                      ),
                      DisplayIcon(
                        icon: Icons.settings_outlined,
                        color: MusicColors.musicPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            MusicSpacers.verticalSpace20,
            SizedBox(
              height: 30,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {},
                        child: MusicPad.pad8Right(
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: MusicPad.pad8All(
                                child: const Text(
                                  "Podcasts and shows",
                                  style: TextStyle(
                                      color: MusicColors.musicPrimary,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              )),
                        ));
                  }),
            ),
            MusicSpacers.verticalSpace20,
            GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 6 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    clipBehavior: Clip.hardEdge,
                    width: ScreenRatio().screenWidth(context) * .5,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6))),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(AppAssets.songCover),
                        ),
                        Expanded(
                          flex: 2,
                          child: MusicPad.pad8Horizontal(
                              child: const Text(
                            "Demo music name and data",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          )),
                        ),
                      ],
                    ),
                  );
                }),
            MusicSpacers.verticalSpace32,
            const Text(
              "Artists for you",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            MusicSpacers.verticalSpace20,
            SizedBox(
              height: 220,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: MusicColors.musicPrimary,
                      ),
                      child: Image.asset(
                        AppAssets.artistCover,
                        fit: BoxFit.contain,
                      ),
                    ),
                    MusicSpacers.verticalSpace8,
                    const SizedBox(
                      width: 180,
                      child: Text(
                        "Arjit Singh",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Episodes for you",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            MusicSpacers.verticalSpace20,
            SizedBox(
              height: 220,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => MusicPad.pad12Right(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        height: 180,
                        decoration: const BoxDecoration(
                          color: MusicColors.musicPrimary,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset(AppAssets.episodeCover),
                      ),
                      MusicSpacers.verticalSpace8,
                      const SizedBox(
                        width: 180,
                        child: Text(
                          "Arjit Singh, Armaan Malik, and Atif Aslam",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
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
      bottomNavigationBar: SizedBox(
        // height: 100,
        child: BottomNavigationBar(
          elevation: 5,
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Colors.grey.shade900,
          fixedColor: MusicColors.musicPrimary,
          key: _globalKey,
          unselectedLabelStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          selectedLabelStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: MusicColors.musicPrimary,
                  size: 32,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: MusicColors.musicPrimary,
                size: 32,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books,
                  color: MusicColors.musicPrimary,
                  size: 32,
                ),
                label: "Your library"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: MusicColors.musicPrimary,
                  size: 32,
                ),
                label: "Profile"),
          ],
          currentIndex: _selectedIndex,

          onTap: (int index) {
            print(index);
            switch (index) {
              case 0:
                HomePage();
                break;
              case 1:
                const SearchPage();
                break;
            }
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}

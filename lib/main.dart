import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:music_ui_components/music_ui_components.dart';
import 'package:you_music/components/check_time.dart';
import 'package:you_music/components/screen_ratio.dart';

void main() {
  runApp(const MainMusicPage());
}

class MainMusicPage extends StatelessWidget {
  const MainMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        // S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // supportedLocales: S.delegate.supportedLocales,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // shrinkWrap: true,
            children: [
              const SizedBox(height: 60),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.notifications_none,
                          color: MusicColors.musicPrimary,
                          size: 30,
                        ),
                        Icon(
                          Icons.access_time_rounded,
                          color: MusicColors.musicPrimary,
                          size: 30,
                        ),
                        Icon(
                          Icons.settings_outlined,
                          color: MusicColors.musicPrimary,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 30,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Music",
                                  style: TextStyle(
                                      color: MusicColors.musicPrimary,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              )),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 6 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: ScreenRatio().screenWidth(context) * .5,
                        decoration: BoxDecoration(color: Colors.grey.shade700),
                        child: ListTile(
                          
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

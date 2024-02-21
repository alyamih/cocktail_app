import 'package:flutter/material.dart';

enum EPageOnSelect {
  homePage,
  historyPage,
  mixPage,
  settingsPage,
}

EPageOnSelect page = EPageOnSelect.homePage;
EPageOnSelect lastPage = EPageOnSelect.homePage;

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.callBack});
  final VoidCallback callBack;

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              lastPage = page;
              page = EPageOnSelect.homePage;

              widget.callBack();
              setState(() {});
            },
            child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.homePage
                        ? Image.asset(
                            'assets/martini.png',
                            color: Colors.white,
                          )
                        : Image.asset(
                            'assets/martini.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Cocktail',
                          style: TextStyle(
                              fontFamily: 'GT Eesti Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.homePage
                                  ? Colors.white
                                  : const Color(0xFF454545),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              lastPage = page;
              page = EPageOnSelect.mixPage;

              widget.callBack();
              setState(() {});
            },
            child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.mixPage
                        ? Image.asset(
                            'assets/filter.png',
                            color: Colors.white,
                          )
                        : Image.asset(
                            'assets/filter.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Mescolare',
                          style: TextStyle(
                              fontFamily: 'GT Eesti Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.mixPage
                                  ? Colors.white
                                  : const Color(0xFF454545),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              lastPage = page;
              page = EPageOnSelect.historyPage;

              widget.callBack();
              setState(() {});
            },
            child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.historyPage
                        ? Image.asset(
                            'assets/clock.png',
                            color: Colors.white,
                          )
                        : Image.asset(
                            'assets/clock.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Storia',
                          style: TextStyle(
                              fontFamily: 'GT Eesti Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.historyPage
                                  ? Colors.white
                                  : const Color(0xFF454545),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              lastPage = page;
              page = EPageOnSelect.settingsPage;

              widget.callBack();
              setState(() {});
            },
            child: SizedBox(
                height: 70,
                width: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset(
                            'assets/settings.png',
                            color: Colors.white,
                          )
                        : Image.asset(
                            'assets/settings.png',
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Regolazioni',
                          style: TextStyle(
                              fontFamily: 'GT Eesti Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.settingsPage
                                  ? Colors.white
                                  : const Color(0xFF454545),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

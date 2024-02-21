import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:chips_choice/chips_choice.dart';
import 'package:cocktail_app/model/cocktail.dart';
import 'package:cocktail_app/model/ingredient.dart';
import 'package:cocktail_app/model/lists.dart';
import 'package:cocktail_app/model/user.dart';
import 'package:cocktail_app/pages/description_cocktail_page.dart';
import 'package:cocktail_app/pages/show_screen.dart';
import 'package:cocktail_app/widgets/bottom_bar.dart';
import 'package:cocktail_app/widgets/cocktail_widget.dart';
import 'package:cocktail_app/widgets/ingredient_widget.dart';
import 'package:cocktail_app/widgets/search_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

UserItem user = UserItem(starsCount: 0);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> options = [
    'Tutto',
    'Spiriti',
    'Liquori',
    'Miscelatori',
    'Succhi di frutta',
  ];
  List<Ingredient> selectedIngredients = [];
  List<Cocktail> histories = [];
  int tagNumber = 0;

  @override
  void initState() {
    super.initState();
    getFromSharedP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/background.png'))),
          child: getContent()),
    );
  }

  Widget getContent() {
    if (page == EPageOnSelect.homePage) {
      String searchText = '';
      return StatefulBuilder(builder: (context, setstate) {
        List<Cocktail> cocktailList = cocktails
            .where((element) =>
                element.name!.contains(searchText) ||
                element.name!.toLowerCase().contains(searchText))
            .toList();
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 14),
              child: SearchWidget(
                callback: (string) {
                  searchText = string;
                  setstate(() {});
                },
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: getCockTails(cocktailList),
            ))),
            BottomBar(
              callBack: () {
                setState(() {});
              },
            )
          ],
        );
      });
    } else if (page == EPageOnSelect.settingsPage) {
      return Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 65, 16, 10),
          child: InkWell(
            onTap: () {
              page = lastPage;
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(19, 10, 19, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF2C2C2C)),
                  child: const Text(
                    'Indietro',
                    style: TextStyle(
                        fontFamily: 'GT Eesti Pro Text',
                        color: Colors.white,
                        fontSize: 10),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, bottom: 26),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const ReadTermsOrPrivacyScreenView(
                            link: 'google.com',
                          )),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Informativa sulla privacy',
                    style: TextStyle(
                      fontFamily: 'GT Eesti Pro Text',
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, bottom: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Scrivi a sostegno',
                  style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.fromLTRB(8, 17, 8, 17),
              decoration: BoxDecoration(
                  color: const Color(0xff1B181C).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(9)),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 11),
                    child: Text(
                      'Valuta l\'app',
                      style: TextStyle(
                        fontFamily: 'GT Eesti Pro Text',
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  getStars()
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, top: 25, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Condividi l\'app',
                  style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Twitter.png'),
                  Image.asset('assets/Snapchat.png'),
                  Image.asset('assets/Instagram.png'),
                  Image.asset('assets/Facebook.png'),
                ],
              )),
        ]))),
        BottomBar(
          callBack: () {
            setState(() {});
          },
        )
      ]);
    } else if (page == EPageOnSelect.mixPage) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 0),
            child: InkWell(
              onTap: () {
                page = lastPage;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(19, 10, 19, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF2C2C2C)),
                    child: const Text(
                      'Indietro',
                      style: TextStyle(
                          fontFamily: 'GT Eesti Pro Text',
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: ChipsChoice<int>.single(
              choiceStyle: C2ChipStyle.filled(
                  borderRadius: BorderRadius.circular(17),
                  foregroundStyle: const TextStyle(
                      fontFamily: 'GT Eesti Pro Text',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF979797),
                      fontSize: 14),
                  color: const Color(0xFF333333),
                  checkmarkColor: Colors.white,
                  hoveredStyle: C2ChipStyle.filled(color: Colors.white),
                  selectedStyle: C2ChipStyle.filled(
                      color: Colors.white,
                      foregroundStyle: const TextStyle(
                          fontFamily: 'GT Eesti Pro Text',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14))),
              value: tagNumber,
              onChanged: (val) => setState(() => tagNumber = val),
              choiceItems: C2Choice.listFrom<int, String>(
                source: options,
                value: (i, v) => i,
                label: (i, v) => v,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: getIngredients(),
            )),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  if (selectedIngredients.isNotEmpty) {
                    var cocktail =
                        cocktails.elementAt(Random().nextInt(cocktails.length));
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            CocktailDescriptionPage(
                          like: (cocktail) {
                            if (cocktail.isLiked == null) {
                              cocktail.isLiked = true;
                            } else {
                              cocktail.isLiked = !cocktail.isLiked!;
                            }
                            cocktails.removeWhere(
                                (element) => element.name == cocktail.name);
                            cocktails.add(cocktail);
                            addToSharedP(cocktails, histories, user);
                            setState(() {});
                          },
                          cocktail: cocktail,
                          callBack: () {
                            setState(() {});
                          },
                        ),
                      ),
                    );
                    histories.add(cocktail);
                    addToSharedP(cocktails, histories, user);
                  }
                },
                child: Container(
                  width: 200,
                  margin: const EdgeInsets.only(bottom: 8, top: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color(0xFF2C2C2C)),
                  child: const Text(
                    'Mix',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'GT Eesti Pro Text',
                        color: Colors.white,
                        fontSize: 14),
                  ),
                ),
              ),
              BottomBar(
                callBack: () {
                  setState(() {});
                },
              ),
            ],
          )
        ],
      );
    } else if (page == EPageOnSelect.historyPage) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 10),
            child: InkWell(
              onTap: () {
                page = lastPage;
                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(19, 10, 19, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF2C2C2C)),
                    child: const Text(
                      'Indietro',
                      style: TextStyle(
                          fontFamily: 'GT Eesti Pro Text',
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          histories.isNotEmpty
              ? Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: getHistory())),
                )
              : const Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nessuna storia ancora',
                          style: TextStyle(
                              fontFamily: 'GT Eesti Pro Text',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                ),
          BottomBar(
            callBack: () {
              setState(() {});
            },
          )
        ],
      );
    } else {
      return Column(
        children: [
          const Expanded(
            child: Column(),
          ),
          BottomBar(
            callBack: () {
              setState(() {});
            },
          )
        ],
      );
    }
  }

  Widget getCockTails(List<Cocktail> cocktailList) {
    List<Widget> list = [];
    for (var cocktail in cocktailList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) => CocktailDescriptionPage(
                cocktail: cocktail,
                like: (cocktail) {
                  if (cocktail.isLiked == null) {
                    cocktail.isLiked = true;
                  } else {
                    cocktail.isLiked = !cocktail.isLiked!;
                  }
                  cocktails
                      .removeWhere((element) => element.name == cocktail.name);
                  cocktails.add(cocktail);
                  addToSharedP(cocktails, histories, user);
                  setState(() {});
                },
                callBack: () {
                  setState(() {});
                },
              ),
            ),
          );
        },
        child: CocktailWidget(
          cocktail: cocktail,
          like: (cocktail) {
            if (cocktail.isLiked == null) {
              cocktail.isLiked = true;
            } else {
              cocktail.isLiked = !cocktail.isLiked!;
            }
            cocktails.removeWhere((element) => element.name == cocktail.name);
            cocktails.add(cocktail);
            addToSharedP(cocktails, histories, user);
            setState(() {});
          },
        ),
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getHistory() {
    List<Widget> list = [];
    for (var history in histories) {
      list.add(Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xff171717).withOpacity(0.7)),
        child: Row(children: [
          Container(
            width: 56,
            height: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(history.photo!))),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  history.name!,
                  style: const TextStyle(
                      fontFamily: 'GT Eesti Pro Text',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        history.description3!,
                        style: const TextStyle(
                            fontFamily: 'GT Eesti Pro Text',
                            fontSize: 12,
                            color: Color(0xFFB7B7B7),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
                onTap: () {
                  histories.remove(history);
                  addToSharedP(cocktails, histories, user);
                  setState(() {});
                },
                child: Image.asset('assets/trash.png')),
          )
        ]),
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getIngredients() {
    List<Widget> list = [];

    var items = groupBy(ingredients, (Ingredient e) {
      return e.type;
    });
    items.forEach((type, ingredients) {
      if (type == EIngrType.spirits && (tagNumber == 1 || tagNumber == 0)) {
        list.add(const Row(
          children: [
            Text('Spiriti',
                style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
      }
      if (type == EIngrType.liqueurs && (tagNumber == 2 || tagNumber == 0)) {
        list.add(const Row(
          children: [
            Text('Liquori',
                style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
      }
      if (type == EIngrType.mixers && (tagNumber == 3 || tagNumber == 0)) {
        list.add(const Row(
          children: [
            Text('Miscelatori',
                style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
      }
      if (type == EIngrType.fruitJuices && (tagNumber == 4 || tagNumber == 0)) {
        list.add(const Row(
          children: [
            Text('Succhi di frutta',
                style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20)),
          ],
        ));
      }

      if (tagNumber == 0) {
        for (var ingredient in ingredients) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 1) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.spirits)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 2) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.liqueurs)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 3) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.mixers)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 4) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.fruitJuices)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 5) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.bitters)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 6) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.sodaandCola)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 7) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.herbsandSpices)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 8) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.sweeteners)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 1) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.spirits)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      } else if (tagNumber == 9) {
        for (var ingredient in ingredients
            .where((element) => element.type == EIngrType.garnishes)) {
          bool selected = selectedIngredients.firstWhereOrNull(
                  (element) => element.name == ingredient.name) !=
              null;
          list.add(InkWell(
              onTap: () {
                if (selected) {
                  selected = false;
                  selectedIngredients.remove(ingredient);
                  setState(() {});
                } else {
                  selected = true;
                  selectedIngredients.add(ingredient);
                  setState(() {});
                }
              },
              child: IngredientWidget(
                  ingredient: ingredient, selected: selected)));
        }
      }
    });
    return Wrap(
      runSpacing: 20,
      spacing: 10,
      children: list,
    );
  }

  Future<void> addToSharedP(List<Cocktail>? cocktails, List<Cocktail>? history,
      UserItem? user) async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.clear();
    if (user != null) {
      prefs.setString('user', jsonEncode(user));
    }
    if (cocktails != null) {
      prefs.setString('cocktails', jsonEncode(cocktails));
    }
    if (history != null) {
      prefs.setString('history', jsonEncode(history));
    }
  }

  void getFromSharedP() async {
    final prefs = await SharedPreferences.getInstance();

    final List<dynamic> jsonData1 =
        jsonDecode(prefs.getString('cocktails') ?? '[]');
    final List<dynamic> jsonData2 =
        jsonDecode(prefs.getString('history') ?? '[]');
    if (prefs.getString('user') != null) {
      Map<String, dynamic> userMap = jsonDecode(prefs.getString('user')!);
      user = UserItem.fromJson(userMap);
    }
    if (jsonData1
        .map<Cocktail>((jsonList) {
          {
            return Cocktail.fromJson(jsonList);
          }
        })
        .toList()
        .isNotEmpty) {
      cocktails = jsonData1.map<Cocktail>((jsonList) {
        {
          return Cocktail.fromJson(jsonList);
        }
      }).toList();
    }

    histories = jsonData2.map<Cocktail>((jsonList) {
      {
        return Cocktail.fromJson(jsonList);
      }
    }).toList();
    cocktails.sort((a, b) => a.name!.compareTo(b.name!));
    setState(() {});
  }

  Widget getStars() {
    List<Widget> list = [];
    if (user.starsCount == 0) {
      for (var i = 0; i < 5; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = user.starsCount! + i + 1;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
              )),
        );
      }
    } else if (user.starsCount == 1) {
      list.add(
        InkWell(
            onTap: () {
              user.starsCount = 0;
              addToSharedP(cocktails, histories, user);
              setState(() {});
            },
            child: Image.asset(
              'assets/star.png',
              color: Colors.yellow,
            )),
      );
      for (var i = 0; i < 4; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = user.starsCount! + i + 1;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
              )),
        );
      }
    } else if (user.starsCount == 2) {
      for (var i = 0; i < 2; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = i;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
                color: Colors.yellow,
              )),
        );
      }

      for (var i = 0; i < 3; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = user.starsCount! + i + 1;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
              )),
        );
      }
    } else if (user.starsCount == 3) {
      for (var i = 0; i < 3; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = i;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
                color: Colors.yellow,
              )),
        );
      }

      for (var i = 0; i < 2; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = user.starsCount! + i + 1;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
              )),
        );
      }
    } else if (user.starsCount == 4) {
      for (var i = 0; i < 4; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = i;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
                color: Colors.yellow,
              )),
        );
      }

      for (var i = 0; i < 1; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = user.starsCount! + i + 1;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
              )),
        );
      }
    } else if (user.starsCount == 5) {
      for (var i = 0; i < 5; i++) {
        list.add(
          InkWell(
              onTap: () {
                user.starsCount = i;
                addToSharedP(cocktails, histories, user);
                setState(() {});
              },
              child: Image.asset(
                'assets/star.png',
                color: Colors.yellow,
              )),
        );
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list,
    );
  }
}

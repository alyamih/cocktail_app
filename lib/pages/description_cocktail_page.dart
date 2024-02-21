import 'dart:ui';

import 'package:cocktail_app/model/cocktail.dart';
import 'package:cocktail_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class CocktailDescriptionPage extends StatefulWidget {
  const CocktailDescriptionPage({
    super.key,
    required this.cocktail,
    required this.callBack,
    required this.like,
  });
  final Cocktail cocktail;
  final Function callBack;
  final Function(Cocktail) like;

  @override
  State<CocktailDescriptionPage> createState() =>
      _CocktailDescriptionPageState();
}

class _CocktailDescriptionPageState extends State<CocktailDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/background.png'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(32),
                                        topRight: Radius.circular(32)),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        widget.cocktail.photo!,
                                      ),
                                    )),
                                height: 270,
                                width: double.infinity,
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: InkWell(
                                  onTap: () {
                                    widget.like(widget.cocktail);
                                    setState(() {});
                                  },
                                  child: Image.asset(
                                    'assets/heart.png',
                                    color: widget.cocktail.isLiked != null &&
                                            widget.cocktail.isLiked!
                                        ? Colors.red
                                        : null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(widget.cocktail.name!,
                                    style: const TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(widget.cocktail.description3!,
                                      style: const TextStyle(
                                          fontFamily: 'GT Eesti Pro Text',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFB7B7B7),
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Text(widget.cocktail.description1!,
                                style: const TextStyle(
                                    fontFamily: 'GT Eesti Pro Text',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 12)),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Divider(
                              color: Colors.white,
                              height: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Strumenti',
                                    style: TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.cocktail.compoundText1!,
                                    style: const TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14)),
                                Text(widget.cocktail.compound1!,
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14)),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Ingredienti',
                                    style: TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(widget.cocktail.compoundText2!,
                                      style: const TextStyle(
                                          fontFamily: 'GT Eesti Pro Text',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 14)),
                                ),
                                Text(widget.cocktail.compound2!,
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14)),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Ricetta',
                                    style: TextStyle(
                                        fontFamily: 'GT Eesti Pro Text',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                            child: Text(widget.cocktail.description2!,
                                style: const TextStyle(
                                    fontFamily: 'GT Eesti Pro Text',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 14)),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BottomBar(
              callBack: () {
                Navigator.pop(context);
                widget.callBack();
              },
            )
          ],
        ),
      ),
    );
  }
}

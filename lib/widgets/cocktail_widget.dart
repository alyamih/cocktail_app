import 'package:cocktail_app/model/cocktail.dart';
import 'package:flutter/material.dart';

class CocktailWidget extends StatefulWidget {
  const CocktailWidget({super.key, required this.cocktail, required this.like});
  final Cocktail cocktail;
  final Function(Cocktail) like;

  @override
  State<CocktailWidget> createState() => _CocktailWidgetState();
}

class _CocktailWidgetState extends State<CocktailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      height: 303,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Color(0xFF333333),
              ],
              stops: [
                -0,
                1.0
              ])),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.cocktail.photo!,
                        ),
                      ),
                    ),
                    height: 202,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(widget.cocktail.name!,
                  style: const TextStyle(
                      fontFamily: 'GT Eesti Pro Text',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 14),
              child: Text(widget.cocktail.description1!,
                  maxLines: 3,
                  style: TextStyle(
                      fontFamily: 'GT Eesti Pro Text',
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 12)),
            ),
          ]),
    );
  }
}

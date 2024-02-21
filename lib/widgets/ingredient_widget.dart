import 'package:cocktail_app/model/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget(
      {super.key, required this.ingredient, required this.selected});
  final Ingredient ingredient;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 25,
      height: 40,
      decoration: BoxDecoration(
        color: selected ? Colors.white : const Color(0xFF333333),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                ingredient.name!,
                style: TextStyle(
                    fontFamily: 'GT Eesti Pro Text',
                    fontWeight: FontWeight.w400,
                    color: selected ? Colors.black : const Color(0xFF979797),
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            if (selected)
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              )
          ],
        ),
      ),
    );
  }
}

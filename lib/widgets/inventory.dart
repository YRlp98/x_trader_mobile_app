import 'package:flutter/material.dart';
import 'package:x_trader/theme/colors.dart';
import 'package:x_trader/theme/text_styles.dart';

class Inventory extends StatefulWidget {
  Inventory({Key key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: 15,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InventoryCard();
          },
        ),
      ),
    );
  }
}

class InventoryCard extends StatelessWidget {
  const InventoryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          right: 8,
          left: 8,
          bottom: 8,
        ),
        decoration: BoxDecoration(
          color: navyBlueColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            itemName(name: 'Genuine Ice Baby Roshan Immortal CocccccXXXX 5555'),
            itemImage(image: 'assets/images/inventory.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                itemType(type: 'rare'),
                SizedBox(width: 10),
                itemCatPlatform(platformIcon: 'assets/images/steam.png'),
                SizedBox(width: 5),
                itemCatGame(gameIcon: 'assets/images/cs_go.png'),
              ],
            ),
            SizedBox(height: 8),
            itemPrice(price: r'$254.22'),
          ],
        ),
      ),
      onTap: () {
        print('Inventory Tap');
      },
    );
  }

  Text itemName({String name}) {
    return Text(
      name,
      maxLines: 2,
      style: inventoryCardTitle,
    );
  }

  Container itemImage({String image}) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(image),
    );
  }

  Text itemType({String type}) {
    return Text(
      type,
      maxLines: 1,
      style: inventoryCardType,
    );
  }

  Container itemCatPlatform({String platformIcon}) {
    return Container(
      width: 20,
      height: 20,
      child: Image.asset(platformIcon),
    );
  }

  Container itemCatGame({String gameIcon}) {
    return Container(
      width: 20,
      height: 20,
      child: Image.asset(gameIcon),
    );
  }

  Text itemPrice({String price}) {
    return Text(
      price,
      maxLines: 1,
      style: inventoryCardPrice,
    );
  }
}

import 'package:bike/cart/item_decoration.dart';
import 'package:bike/shopping_cart/buy_or_remove_item.dart';
import 'package:bike/shopping_cart/info_container.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({
    super.key,
  });

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int sum1 = 0;
  int sum2 = 0;
  int sum3 = 0;
  String totalSum = "\$4,283.99";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242C3B),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ItemDecoration(
                  marginLeft: 20,
                  marginRight: 56,
                  width: 44,
                  height: 44,
                  boxShadow: [
                    const BoxShadow(
                        color: Color(0xff10141C),
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        spreadRadius: 0),
                    BoxShadow(
                      color: const Color(0xff2B3445).withOpacity(0.5),
                      blurRadius: 30,
                      spreadRadius: 0,
                      offset: const Offset(0, -20),
                    )
                  ],
                  clipBehavior: Clip.hardEdge,
                  radius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff34C8E8), Color(0xff4E4AF2)]),
                  color: const [Color(0xff34C8E8), Color(0xff4E4AF2)],
                  child: ItemDecoration(
                    radius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent),
                    color: const [Color(0xff50E0F3), Color(0xff2330E8)],
                    child: const ItemDecoration(
                      color: [Color(0x00000000), Color(0x00000000)],
                      child: Center(
                        child: Icon(
                          Icons.chevron_left,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "My Shopping Cart",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            AddOrRemoveItem(
              sum: sum1,
              cost: '\$1,999.99',
              image: 'assets/images/bike_image.png',
              nameOfProduct: 'PEUGEOT- LR01',
              onTapAdd: () {},
              onTapRemove: () {},
            ),
            AddOrRemoveItem(
              sum: sum2,
              cost: '\$ 3,999.99',
              image: 'assets/images/sport_bike.png',
              nameOfProduct: 'PILOT - CHROMOLY 520',
              onTapAdd: () {},
              onTapRemove: () {},
            ),
            AddOrRemoveItem(
              sum: sum3,
              cost: '\$ 120',
              image: 'assets/images/helmet.png',
              nameOfProduct: 'SMITH - Trade',
              onTapAdd: () {},
              onTapRemove: () {},
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Text(
                "Your cart qualifies for free shipping",
                style: TextStyle(
                    color: const Color(0xffFFFFFF).withOpacity(0.6),
                    fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InfoContainer(
              infoText: "Subtotal",
              discountOrCost: "\$6119.99",
            ),
            InfoContainer(infoText: "Delivery Fee:", discountOrCost: "\$0"),
            InfoContainer(infoText: "Discount", discountOrCost: "30%"),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              margin: const EdgeInsets.only(top: 17.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                        color: const Color(0xffFFFFFF).withOpacity(0.87),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    totalSum,
                    style: const TextStyle(
                        color: Color(0xff38B8EA),
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )
                ],
              ),
            ),
            ItemDecoration(
              height: 44,
              width: 160,
              margin: const EdgeInsets.only(right: 35),
              clipBehavior: Clip.hardEdge,
              radius: BorderRadius.circular(10),
              color: const [
                Color(0xff51E5F4),
                Color(0xff222CE8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              child: ItemDecoration(
                radius: BorderRadius.circular(10),
                border: Border.all(color: Colors.transparent),
                width: 2,
                color: const [Color(0xff35BEE8), Color(0xff4865EF)],
                child: const Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

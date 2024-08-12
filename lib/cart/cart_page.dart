import 'package:bike/cart/item_decoration.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rectangle.png'),
            fit: BoxFit.cover,
          ),
          color: Color(0xFF242C3B),
        ),
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
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
                        spreadRadius: 0,
                      ),
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
                      colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                    ),
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
                    "PEUGEOT - LR01",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                "assets/images/bike_image.png",
                width: 284.73,
                height: 208.41,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

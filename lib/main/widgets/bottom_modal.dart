import 'package:bike/cart/item_decoration.dart';
import 'package:bike/shopping_cart/shopping_page.dart';
import 'package:bike/utils/button_shadow.dart';
import 'package:bike/utils/info.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomModal extends StatelessWidget {
  BottomModal(
      {super.key, required this.description, required this.specification});
  bool description;
  bool specification;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          height: 370,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        description = true;
                        specification = false;
                      }),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 43,
                        decoration:
                            description ? activeShadow() : inActiveShadow(),
                        child: Center(
                          child: Text(
                            'Description',
                            style: TextStyle(
                              color: description
                                  ? const Color(0xFF3CA4EB)
                                  : const Color(0xA0FFFFFF),
                              fontWeight: description
                                  ? FontWeight.w800
                                  : FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        description = false;
                        specification = true;
                      }),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 43,
                        decoration:
                            specification ? activeShadow() : inActiveShadow(),
                        child: Center(
                          child: Text(
                            'Specification',
                            style: TextStyle(
                              color: specification
                                  ? const Color(0xFF3CA4EB)
                                  : const Color(0xA0FFFFFF),
                              fontWeight: specification
                                  ? FontWeight.w800
                                  : FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "PEUGEOT - LR01",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppInfo.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      child: SizedBox(
                        child: Text(
                          "\$1,999.99",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff3D9CEA),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const ShoppingPage();
                          }),
                        );
                      },
                      child: ItemDecoration(
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
                              "Add to Cart",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

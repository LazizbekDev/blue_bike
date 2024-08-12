import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddOrRemoveItem extends StatefulWidget {
  AddOrRemoveItem({
    super.key,
    required this.sum,
    required this.cost,
    required this.image,
    required this.nameOfProduct,
    required this.onTapAdd,
    required this.onTapRemove,
  });
  final VoidCallback onTapAdd;
  final VoidCallback onTapRemove;
  final int sum;
  String image;
  String cost;
  String nameOfProduct;

  @override
  State<AddOrRemoveItem> createState() => _AddOrRemoveItemState();
}

class _AddOrRemoveItemState extends State<AddOrRemoveItem> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.only(
        bottom: 17.99,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xffFFFFFF).withOpacity(0.2),
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 90,
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              border: const Border(
                bottom: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.none,
                ),
              ),
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff586580),
                  Color(0xff2B3240),
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xff363E51),
                    Color(0xff4C5770),
                  ],
                ),
              ),
              child: Center(child: Image.asset(widget.image)),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nameOfProduct,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cost,
                      style: const TextStyle(
                        color: Color(0xff3D9CEA),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 31, 36, 61),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff34C8E8),
                                  Color(0xff4E4AF2),
                                ],
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: InkWell(
                                onTap: widget.onTapAdd,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: Text(
                              "${widget.sum}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xffFFFFFF).withOpacity(0.6),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                            ),
                            child: InkWell(
                              onTap: widget.onTapRemove,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

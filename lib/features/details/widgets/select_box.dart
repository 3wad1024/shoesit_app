import 'package:flutter/material.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class SelectBox extends StatefulWidget {
  const SelectBox({super.key,this.text, required this.color});
  final String ?text;
   final Color color;

  @override
  State<SelectBox> createState() => _SelectBoxState();
}

class _SelectBoxState extends State<SelectBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
                                      alignment: Alignment.center,
                                    width: 40,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: widget.color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                              '${widget.text}' ,
                                      style: getSmallStyle(),
                                    ),
                                  );
  }
}
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoezy_app/core/utils/app_colors.dart';
import 'package:shoezy_app/core/utils/styles.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
     required this.con,
      required this.name, 
      required this.lines,
      required this.sidecolor,
      required this.textcolor,
      
      });
  final TextEditingController con;
  final String name;
  final int lines;
  final Color sidecolor;
  final Color textcolor;
  

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: getTitleStyle(fontSize: 16,color: widget.textcolor),
                ),
                const Gap(5),
                TextFormField(
                  
                  
                  maxLines:widget.lines ,
                  controller: widget.con,
                  validator: (value) {
                    if(value!.isEmpty){
                      return '${widget.name} is required*';
                    }
                    return null;
                  },
                  decoration:  InputDecoration(
                    contentPadding: EdgeInsets.all(15),

                        enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color:widget.sidecolor )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: widget.sidecolor)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.redcolor)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.redcolor)),
                      hintText: "Enter ${widget.name} ",
                      hintStyle: getBodyStyle(color: widget.textcolor,)
                      ),
                      
                )
              ],
            );
  }
}
// We Will Use stateFull Widget because the Widget can expand and collapse

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/util/dimensions.dart';
import 'package:food_delivery_app/widgets/app_text.dart';

class Paragraph extends StatefulWidget {
  final String text;
  final double size;

  const Paragraph({
    super.key,
    required this.text,
    this.size = 0,
  });

  @override
  State<Paragraph> createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  // Late so we don't have to initialize the text
  late String displayedText;
  late String expandedText;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    int maxLength = widget.text.length; // Get the text length

    if (maxLength > textHeight) {
      //split the Text
      displayedText = widget.text.substring(0, textHeight.toInt());
      expandedText = widget.text.substring(textHeight.toInt() + 1, maxLength);
    } else {
      // Late variables must be initialized so we set expanded tp empty string
      displayedText = widget.text;
      expandedText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: expandedText.isEmpty
          ? AppTextSmall(
              text: displayedText,
              size: Dimensions.font16,
              color: AppColors.paraColor,
            )
          : Column(
              children: [
                AppTextSmall(
                  text: hiddenText
                      ? (displayedText + '...')
                      : (displayedText + expandedText),
                  size: Dimensions.font16,
                  color: AppColors.paraColor,
                  height: 1.3,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText =
                            !hiddenText; // Flip the value of the Boolean variable
                      });
                    },
                    child: Row(
                      children: [
                        AppTextSmall(
                            text: 'Show More', color: AppColors.mainColor),
                        Icon(
                            hiddenText
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up,
                            color: AppColors.mainColor)
                      ],
                    )),
              ],
            ),
    );
  }
}

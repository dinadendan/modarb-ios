import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';

class ImageOfPlanWidget extends StatelessWidget{
  const ImageOfPlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h,vertical: 20.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 220.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Image.asset('assets/images/plans.png',
              fit: BoxFit.fill,

            ),
          ),
          Positioned(
            top: 10.h,
            child: Column(
              children: [
                Text(
                  'Today’s workout',
                  style: TextStyles.font16White700,
                ),
                verticalSpace(10),
                Text(
                  'full-body',
                  style: TextStyles.font13White700,
                ),
                verticalSpace(15),
                const AppTextContainer(
                  text: '30 min',
                ),
                verticalSpace(15),
                AppTextContainer(
                  text: '6 exercise',
                  width: 90.w,
                  height: 25.h,
                ),
                verticalSpace(15),
                AppTextButton(
                  buttonText: 'Start Workout',
                  buttonWidth: 160.w,
                  buttonHeight: 25.h,
                  backgroundColor: ColorsManager.mainPurple,
                  textColor: ColorsManager.mainWhite,
                  textStyle: TextStyles.font16White700,
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
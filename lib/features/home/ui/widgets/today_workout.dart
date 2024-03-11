import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class TodayWorkout extends StatelessWidget{
  const TodayWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Crush Today’s Workout',
          style: TextStyles.font19White700,
        ),
        verticalSpace(20),
        Stack(
          children: [
            Container(
              height: 170.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.asset('assets/images/plans.png',
                fit: BoxFit.fill,

              ),
            ),
            Positioned(
              top: 80.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.mainPurple,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Center(
                      child: Text(
                        '30 min',
                        style: TextStyles.font13White600,
                      ),
                    ),
                  ),
                  horizontalSpace(25),
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.mainPurple,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Center(
                      child: Text(
                        '6 exercise ',
                        style: TextStyles.font13White600,
                      ),
                    ),
                  ),
                  horizontalSpace(20),
                ],
              ),
            ),
            Positioned(
              bottom: 5.h,
              right: 80.w,
              child: AppTextButton(
                buttonText: 'continue',
                buttonWidth: 140.w,
                buttonHeight: 30.h,
                backgroundColor: ColorsManager.lighterWhite,
                textColor: ColorsManager.mainPurple,
                onPressed: (){},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

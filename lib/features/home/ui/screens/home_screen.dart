import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/home/ui/widgets/container_of_weeks.dart';
import 'package:modarb_app/features/home/ui/widgets/daily_goals.dart';
import 'package:modarb_app/features/home/ui/widgets/daily_intake.dart';
import 'package:modarb_app/features/home/ui/widgets/list_of_plans.dart';
import 'package:modarb_app/features/home/ui/widgets/today_diet.dart';
import 'package:modarb_app/features/home/ui/widgets/today_workout.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        leading: Padding(
          padding: EdgeInsets.all(6.h),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        ),
        title:Text(
          'Hey,\n User ',
          style:TextStyles.font13White600,
        ),
        titleSpacing: 5,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none_sharp,
                size: 30.sp,
                color: ColorsManager.mainPurple,
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ContainerOfWeeks(),
              ListOfPlans(),
              TodayWorkout(),
              TodayDiet(),
              DailyIntake(),
              DailyGoals(),
            ],
          ),
        ),
      ),
      );
  }
}
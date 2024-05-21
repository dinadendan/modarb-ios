import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/horizontal_line.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/my_saved_meals_tab.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/recently_added_tab.dart';

class SheetOfAddingMeal extends StatelessWidget {
  const SheetOfAddingMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController;

    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
          color: ColorsManager.darkGray,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        padding: EdgeInsets.all(16.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add meal',
                  style: TextStyles.font13White700,
                ),
                IconButton(
                  onPressed: (){
                    context.pop();
                  },
                  icon: const Icon(Icons.close),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(
                'Breakfast',
                style: TextStyles.font16White700,
              ),
            ),
            verticalSpace(10),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'search',
                hintStyle: const TextStyle(
                    color: ColorsManager.mainPurple
                ),
                filled: true,
                fillColor: ColorsManager.lighterGray,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,

                ),
                prefixIcon: const Icon(Icons.search,
                  color: ColorsManager.mainPurple,
                ),
              ),
            ),
            verticalSpace(10),
            const ThinLine(),
            Padding(
              padding:EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: ColorsManager.lighterGray,
                ),
                child: TabBar(
                  dividerHeight: 0,
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorsManager.mainPurple,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Recently added',
                    ),
                    Tab(
                      text: 'My saved meals',
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children:  const [
                  RecentlyAddedTab(),
                  MySavedMeals(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
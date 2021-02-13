import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserTypeSwitcher extends StatelessWidget {
  const UserTypeSwitcher({
    Key key,
    @required this.userType,
  }) : super(key: key);

  final ValueNotifier<int> userType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      width: 100.0.w,
      margin: EdgeInsets.symmetric(horizontal: 7.0.w),
      height: 80.0,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => userType.value = 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds:300),
              decoration: BoxDecoration(
                color: userType.value == 1
                    ? Colors.transparent
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              margin: EdgeInsets.only(left: 0.5.w),
              alignment: Alignment.center,
              width: 42.5.w,
              height: 70.0,
              child: Text(
                'Rider',
                style: TextStyle(
                    color:
                        userType.value == 1 ? Colors.white : Colors.black,
                    fontSize: 8.0.sp),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => userType.value = 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds:300),
              decoration: BoxDecoration(
                color: userType.value == 0
                    ? Colors.transparent
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              margin: EdgeInsets.only(right: 0.5.w),
              alignment: Alignment.center,
              width: 42.5.w,
              height: 70.0,
              child: Text(
                'Driver',
                style: TextStyle(
                    color:
                        userType.value == 0 ? Colors.white : Colors.black,
                    fontSize: 8.0.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

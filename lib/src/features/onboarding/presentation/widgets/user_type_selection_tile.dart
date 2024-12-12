import 'package:emergency/src/core/helpers/base_widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/constants/app_sizes.dart';

class UserTypeSelectionTile extends StatelessWidget {
  const UserTypeSelectionTile({
    super.key,
    required this.onChanged,
    required this.role,
    required this.title,
    required this.selectedRole,
  });

  final String role;
  final String title;
  final String selectedRole;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.w,
      height: 76.h,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.pH16),
      decoration: BoxDecoration(
        color: HexColor('#FCFDFF'),
        borderRadius: BorderRadius.circular(
          AppCircular.r5,
        ),
        border: Border.all(
          width: 1.5.w,
          color: HexColor('#E6E6E6'),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: title,
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: HexColor('#000E1A'),
          ),
          Transform.scale(
            scale: 1.2,
            child: Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              fillColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    // Active color when the Radio is selected
                    return HexColor('#0071CD');
                  }
                  // Inactive color when the Radio is not selected
                  return HexColor('#E6E6E6');
                },
              ),
              value: role,
              groupValue: selectedRole,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
//  RadioListTile(
//         controlAffinity: ListTileControlAffinity.trailing,
//         fillColor: WidgetStatePropertyAll<Color>(HexColor('#0071CD')),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(24.r),
//           side: BorderSide(
//             color: selectedRole == role
//                 ? HexColor('#0071CD')
//                 : HexColor('#E6E6E6'), //
//             width: 1.5.w,
//           ),
//         ),
//         title: Align(
//           child: AppText(
//             text: title,
//             fontWeight: FontWeight.w500,
//             fontSize: 18.sp,
//             color: HexColor('#000E1A'),
//           ),
//         ),
//         value: role,
//         groupValue: selectedRole,
//         onChanged: onChanged,
//       ),

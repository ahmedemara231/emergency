import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/helpers/base_widgets/social_media_container.dart';
import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SocialMediaContainer(iconImage: Assets.iconsFacebookIcon),
        SizedBox(
          width: 16,
        ),
        SocialMediaContainer(iconImage: Assets.iconsGoogleIcon),
        // if (Platform.isIOS)
        //   const SocialMediaContainer(iconImage: 'assets/svgs/apple.svg'),
      ],
    );
  }
}

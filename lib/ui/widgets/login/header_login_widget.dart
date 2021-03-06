import 'package:flutter/material.dart';
import 'package:flutter_blog_app/shared/app_route.dart';
import 'package:flutter_blog_app/shared/theme.dart';

class HeaderLogin extends StatelessWidget {
  final VoidCallback back;
  const HeaderLogin({
    Key? key,
    required this.back,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        Row(
          children: [
            InkWell(
              child: const Icon(Icons.arrow_back_rounded, size: 24.0),
              onTap: back,
            ),
            const SizedBox(
              width: 7.0,
            ),
            Image.asset(
              "assets/bitmap/logo.png",
              width: 48.0,
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: blackTextFont.copyWith(
                fontWeight: semiBold,
                fontSize: 24.0,
              ),
            ),
            Text(
              "Gits Developer Portal",
              style: greyTextFont.copyWith(
                fontSize: 15.0,
                fontWeight: normal,
              ),
            )
          ],
        )
      ],
    );
  }
}

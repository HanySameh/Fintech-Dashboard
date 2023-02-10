import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Visibility(
            visible: Responsive.isDesktop(context),
            child: const Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(
                "Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Search something...",
                  icon: Icon(CupertinoIcons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: _nameAndProfilePicture(
              context,
              "Hany Sameh",
              "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=740&t=st=1676066467~exp=1676067067~hmac=fa1dd5a5d95ab15e654c6af1192e148d5c9501c7e760a4d958c017d94aba43e3",
            ),
          ),
        ],
      ),
    );
  }

  Widget _nameAndProfilePicture(
      BuildContext context, String username, String imageUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 6.0),
          child: Icon(
            CupertinoIcons.chevron_down,
            size: 14,
          ),
        ),
        Visibility(
          visible: !Responsive.isMobile(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}

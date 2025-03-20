import 'package:flutter/material.dart';

class UserPhoto extends StatefulWidget {
  const UserPhoto({super.key});

  @override
  State<UserPhoto> createState() => _UserPhotoState();
}

class _UserPhotoState extends State<UserPhoto> {

  Image _userPhoto = Image.asset('lib/img/testImg.jpg', fit: BoxFit.cover);//defaultImage todo

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: ClipOval(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: _userPhoto,
        ),
      ),
    );
  }
}
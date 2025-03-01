import 'package:flutter/material.dart';
import 'package:netflix_app/api/api_constants.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/models/downloads_model.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';

class BackgroundCard extends StatelessWidget {
  final List<DownloadsModel> imageList;

  const BackgroundCard({super.key,required this.imageList});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(ApiConstants.kBaseUrl+imageList[1].posterPath!),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButton(
                icon: Icons.play_arrow,
                title: 'My List',
              ),
              _playButton(),
              const CustomButton(
                icon: Icons.info,
                title: 'Info',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Container _playButton() {
  return Container(
    width: 100,
    height: 39,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: kwhiteColor,
    ),
    child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: kblackColor,
        ),
        label: const Text(
          'Play',
          style: TextStyle(fontSize: 18, color: kblackColor),
        )),
  );
}

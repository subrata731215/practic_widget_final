import 'package:flutter/material.dart';

class CircleBox extends StatelessWidget {
  const CircleBox({super.key, required this.image, this.name = ''});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            name,textScaleFactor: 0.7,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class MyAssetImage {
  static const subrata = 'assets/subrata.jpg';
  static const sumanta = 'assets/sumanta.jpg';
  static const bisu = 'assets/bisu.jpg';
  static const mukto = 'assets/mukto.jpg';
  static const supriyo = 'assets/supriyo.jpg';
  static const kala = 'assets/kala.jpg';
  static const joydeb = 'assets/joydeb.jpg';
  static const niru = 'assets/niru.jpg';
  static const satya = 'assets/satya.jpg';
  static const sudip = 'assets/sudip.jpg';
}

List<CircleModel> friendList = [
  CircleModel(
      assetName: MyAssetImage.subrata,
      name: 'Subrata Ghosh',
      email: 'subratavb2012@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.sumanta,
      name: 'Sumanta Pal',
      email: 'sumantapal4@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.bisu,
      name: 'Bisu Pal',
      email: 'bishwajitpal713129@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.mukto,
      name: 'Mukto Ghosh',
      email: 'mukta731215@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.supriyo,
      name: 'Supriyo Patra',
      email: 'supriyopatra@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.kala,
      name: 'Kalachand Bauri',
      email: 'kalachand2121@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.joydeb,
      name: 'Joydeb Singha',
      email: 'ijoydebsingha@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.niru,
      name: 'Niru Banerjee',
      email: 'nirupam@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.satya,
      name: 'Satya Mondal',
      email: 'satya.anu93@gmail.com'),
  CircleModel(
      assetName: MyAssetImage.sudip,
      name: 'Sudip Pal',
      email: 'sudip2121@gmail.com'),
];

class CircleModel {
  final String assetName;
  final String name;
  final String email;

  CircleModel({required this.assetName, required this.name, this.email = ''});
}

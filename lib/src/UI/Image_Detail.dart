import 'package:flutter/material.dart';

class ImageDetail extends StatefulWidget {
  final imagen;

  ImageDetail({this.imagen});

  @override
  _ImageDetailState createState() => _ImageDetailState(imagen: imagen);
}

class _ImageDetailState extends State<ImageDetail> {
  final imagen;

  _ImageDetailState({this.imagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imagen',
            child: Image.network(imagen),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

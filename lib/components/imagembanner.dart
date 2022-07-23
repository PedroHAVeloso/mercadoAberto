import 'package:flutter/material.dart';

class imagemBanner extends StatelessWidget {
  const imagemBanner ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(3),
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('lib/assets/banner.jpg')
              ),
            );
  }
}

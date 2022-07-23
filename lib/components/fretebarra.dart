import 'package:flutter/material.dart';

class freteBarra extends StatelessWidget {
  const freteBarra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Container(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                /* BORDA COM SOMBRA */ boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: const Offset(0, 1.5),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.local_shipping_outlined,
                    color: Color(0xff43b176),
                  ),
                  Text(
                    " Frete Grátis",
                    style: TextStyle(
                      color: Color(0xff43b176),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " em milhões de produtos a partir de RS79",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
  }
}

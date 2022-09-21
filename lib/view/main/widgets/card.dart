import 'package:data_utama_app/style/text.dart';
import 'package:flutter/material.dart';

Widget cardData(int index) {
  var linkImage_1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQYrXHWJ3vLSBVENuXfpH3f3vaoAdRoZejZ6PjJGyL47zme046oupPAQRMJeaaiaFxZ54&usqp=CAU';
  var linkImage_2 =
      'https://blog.logrocket.com/wp-content/uploads/2021/06/flutter-gridview-tutorial.png';
  var linkImage_3 =
      'https://i.picsum.photos/id/2/250/250.jpg?hmac=QmcGJ5LcxKRsO-4VQtoJDP0gg3b5-51KczRdE0yS9OY';

  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(
                linkImage_3,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'MENU $index',
          style: labelText,
        ),
      ],
    ),
  );
}

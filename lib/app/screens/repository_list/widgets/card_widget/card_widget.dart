import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 124,
        width: deviceInfo.size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1.5),
          ],
        ),
        child: Row(
          children: [
            Image.network(
              'https://cdn-images-1.medium.com/max/280/1*X5PBTDQQ2Csztg3a6wofIQ@2x.png',
              width: 86,
              height: 86,
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nome'),
                  Text('Login'),
                  SizedBox(height: 16),
                  Text('Descrição'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star),
                      Text('00000'),
                      Icon(Icons.device_hub),
                      Text('00000'),
                      Icon(Icons.warning),
                      Text('00000'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

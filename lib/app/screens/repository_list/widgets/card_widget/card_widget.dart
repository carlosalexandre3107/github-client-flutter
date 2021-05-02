import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 124,
        width: deviceInfo.size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1.5,
              blurRadius: 0.5,
              offset: Offset.fromDirection(0.7),
            ),
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
                  Text(
                    'Nome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('Login'),
                  Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Diuretics paradis num copo é motivis de denguis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. Interagi no mé, cursus quis, vehicula ac nisi.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('00000'),
                      Icon(Icons.device_hub),
                      Text('00000'),
                      Icon(
                        Icons.warning,
                        color: Colors.yellow.shade500,
                      ),
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

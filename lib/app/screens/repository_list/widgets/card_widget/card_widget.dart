import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 118,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1.5,
            blurRadius: 0.5,
            offset: Offset(2, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              radius: 36,
              backgroundColor: Colors.blueAccent,
              backgroundImage: NetworkImage(
                  'https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/b2/5a/57/b25a5750-276d-2dc9-1857-464aa83fec65/source/256x256bb.jpg'),
            ),
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
    );
  }
}

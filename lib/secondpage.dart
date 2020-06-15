import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image(
                width: MediaQuery.of(context).size.width / 2,
                image: NetworkImage(
                    'https://img2.pngio.com/free-black-and-white-octopus-clipart-download-free-clip-art-free-black-and-white-octopus-png-2752_2065.png'),
              ),
            ),
            Spacer(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                        color: Colors.white),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNam dignissim, nisl sit amet vehicula pulvinar,',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

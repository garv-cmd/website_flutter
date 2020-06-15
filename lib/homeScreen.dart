import 'package:flutter/material.dart';

class MakeHomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OUT THERE',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNam dignissim, nisl sit amet vehicula pulvinar,'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'PURCHASE',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
